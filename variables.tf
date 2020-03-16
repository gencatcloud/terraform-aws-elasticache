
variable "name" {
  description = "Cluster ID / Name this elasticache belongs to"
  type        = string
}

variable "engine_type" {
  description = "Engine type for this cluster"
  type        = string
  default     = ""
}

variable "engine_version" {
  description = "Version of engine for this cluster"
  type        = string
  default     = ""
}

variable "node_type" {
  description = "Node type for this elasticache"
  type        = string
}

variable "num_cache_nodes" {
  description = "Number of cache nodes for this elasticache"
  type        = string
}

variable "parameter_group_name" {
  description = "Name of the parameter group used by this elasticache cluster"
  type        = string
}

#variable "security_group_ids" {
#  description = "IDs of security groups to be attached to this elasticache cluster"
#  type        = list
#}

variable "apply_immediately" {
  description = "Whether to apply cluster changes immediately, or during maintenance window"
  type        = string
}

variable "port" {
  description = "Port used for this elasticache"
  type        = string
  default     = "12345"
}

variable "az_mode" {
  description = "Whether to provision in single-az or cross-az"
  type        = string
}

variable "security_group_names" {
  description = "Name of the subnet group this cluster resides in"
  type        = list
}

variable "subnet_ids" {
  description = "List of subnet IDs to use"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "A mapping of tags to assign to all resources"
  type        = map(string)
  default     = {}
}
