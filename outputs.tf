output "cluster_id" {
  description = "The cluster identifier for this elasticache"
  value       = "${aws_elasticache_cluster.this.cluster_id}"
}

output "az_mode" {
  description = "The provisioning mode for this elasticache"
  value       = "${aws_elasticache_cluster.this.az_mode}"
}

output "security_group_ids" {
  description = "The security groups attached for this elasticache"
  value       = "${aws_elasticache_cluster.this.security_group_ids}"
}

output "configuration_endpoint" {
  description = "The configuration endpoint for this elasticache"
  value       = "${aws_elasticache_cluster.this.configuration_endpoint}"
}

output "endpoint" {
  description = "The endpoint of this elasticache"
  value       = "${aws_elasticache_cluster.this.cluster_address}"
}

output "parameter_group_name" {
  description = "The parameter group used by this elasticache"
  value       = "${aws_elasticache_cluster.this.parameter_group_name}"
}

output "port" {
  description = "Port used for this elasticache"
  value       = "${aws_elasticache_cluster.this.port}"
}

output "subnet_group_name" {
  description = "The subnet group name where this elasticache resides in"
  value       = "${aws_elasticache_cluster.this.subnet_group_name}"
}
