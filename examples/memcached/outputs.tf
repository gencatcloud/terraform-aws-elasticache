output "mem_cluster_id" {
  description = "The cluster identifier for this memcached"
  value       = "${module.test_memcached.cluster_id}"
}

output "mem_az_mode" {
  description = "The provisioning mode for this memcached"
  value       = "${module.test_memcached.az_mode}"
}

output "mem_configuration_endpoint" {
  description = "The configuration endpoint for this elasticache"
  value       = "${module.test_memcached.configuration_endpoint}"
}
