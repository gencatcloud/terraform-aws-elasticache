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

module "test_memcached" {
  source = "../../"

  name                    = "test-elasticache-memcached"
  engine_type             = "memcached"
  engine_version          = "1.5"
  port                    = 11211

  security_group_names    = [data.aws_security_group.default.name]
  subnet_ids              = data.aws_subnet_ids.private.ids
  az_mode                 = "cross-az"
  node_type               = "cache.t2.micro"
  num_cache_nodes         = 2
  parameter_group_name    = "default.memcached1.5"
  apply_immediately       = "true"

  tags = {
    Env           = "development"
    Owner         = "me"
    Tool          = "terraform"    
  }
}