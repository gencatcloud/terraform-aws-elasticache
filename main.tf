resource "aws_elasticache_cluster" "this" {
  cluster_id            = var.name

  engine                = var.engine_type
  engine_version        = var.engine_version

  node_type             = var.node_type
  num_cache_nodes       = var.num_cache_nodes
  port                  = var.port

  az_mode               = var.az_mode
  parameter_group_name  = var.parameter_group_name
  subnet_group_name     = aws_elasticache_subnet_group.this[0].name

  apply_immediately     = var.apply_immediately

  tags = merge(
    {
      "Name" = format("%s", var.name)
    },
    var.tags,
  )
}

resource "aws_elasticache_subnet_group" "this" {
  count       = length(var.subnet_ids) > 0 ? 1 : 0

  name        = "${var.name}-subnet-group"
  subnet_ids  = tolist(var.subnet_ids)
  description = "ElastiCache Subnet Group for ${var.name}"
}
