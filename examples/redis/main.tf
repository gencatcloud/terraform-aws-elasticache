data "aws_vpc" "default" {
  default = true
}

data "aws_security_group" "default" {
  vpc_id = data.aws_vpc.default.id
  name   = "default"
}

data "aws_subnet_ids" "private" {
  vpc_id = data.aws_vpc.default.id
}

module "test_redis" {
  source = "../../"

  name                    = "test-elasticache-redis"
  engine_type             = "redis"
  engine_version          = "5.0"
  port                    = 11211

  security_group_names    = [data.aws_security_group.default.name]
  subnet_ids              = data.aws_subnet_ids.private.ids
  az_mode                 = "cross-az"
  node_type               = "cache.t2.micro"
  num_cache_nodes         = 2
  parameter_group_name    = "default.redis5.0"
  apply_immediately       = "true"

  tags = {
    Env           = "development"
    Owner         = "me"
    Tool          = "terraform"    
  }
}