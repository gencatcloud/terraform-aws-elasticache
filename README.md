# terraform-aws-elasticache

[![Release](https://img.shields.io/github/release/gencatcloud/terraform-aws-modules-template.svg)](https://github.com/gencatcloud/terraform-aws-modules-template/releases)
[![Last Commit](https://img.shields.io/github/last-commit/gencatcloud/terraform-aws-modules-template.svg)](https://github.com/gencatcloud/terraform-aws-modules-template/commits/master)
![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.png?v=103)

## Description

Terraform module to create AWS ElastiCache cluster for Memcached/Redis engines.

## Table of Content

- [Description](#Description)
- [Prerequisites](#Prerequisites)
- [Dependencies](#Dependencies)
- [Terraform Versions](#Terraform%20Versions)
- [Terraform Providers](#Terraform%20Providers)
- [Getting Started](#Getting_Started)
- [Inputs](#Inputs)
- [Outputs](#Outputs)
- [Contributing](#Contributing)
- [License](#License)
- [Acknowledgments](#Acknowledgments)

## Prerequisites

In order to provision this module, it is require some information from an existing resources as input parameter, those resources are:

- ElastiCache Parameter Group, input variable that require the information from this resource are, `parameter_group_name` 
- Security Group,  input variable that require the information from this resource are, `security_group_ids` 
- ElastiCache Subnet Group,  input variable that require the information from this resource are, `subnet_group_name`
- (optional) SNS Topic, input variable that require the information from this resource are, `notification_topic_arn`

Please note that some of the above resources may be optional it depends on the parameter you filled in the module input

## Dependencies

Doesn't have any dependencies to any other Terraform module

## Terraform Versions

Created and tested using Terraform version `0.12.x`

## Terraform Providers

| Name   | Version |
| ------ | ------- |
| aws    | ~> 2.53 |
| random | ~> 2.2  |

## Getting Started

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Inputs

| Name | Description | Type | Default |
|------|-------------|------|---------|
| name | Name of elasticache engine for this cluster | `string` | `""` |
| engine\_type | Version of elasticache engine for this cluster | `string` | `""` |
| engine\_version | Version of elasticache engine for this cluster | `string` | `""` |
| node\_type | Node type for this elasticache | `string` | n/a |
| num\_cache\_nodes | Number of cache nodes for this elasticache | `string` | n/a |
| port | Port used for this elasticache | `string` | `"11211"` |
| az\_mode | Whether to provision in single-az or cross-az | `string` | n/a |
| parameter\_group\_name | Name of the parameter group used by this elasticache cluster | `string` | n/a |
| subnet\_group\_name | Name of the subnet group this cluster resides in | `string` | n/a |
| apply\_immediately | Whether to apply cluster changes immediately, or during maintenance window | `string` | n/a |

## Outputs

| Name | Description |
|------|-------------|
| cluster\_id | The cluster identifier of this elasticache |
| az\_mode | The provisioning mode of this elasticache |
| configuration\_endpoint | The configuration endpoint of this elasticache |
| endpoint | The endpoint of this elasticache |
| port | Port used for this elasticache |
| parameter\_group\_name | The parameter group used by this elasticache |
| security\_group\_ids | The security groups attached to this elasticache |
| subnet\_group\_name | The subnet group name where this elasticache resides in |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Contributing

This module accepting or open for any contributions from anyone, please see the [CONTRIBUTING.md](https://github.com/gencatcloud/terraform-aws-elasticache/blob/master/CONTRIBUTING.md) for more detail about how to contribute to this module.

## License

This module is under Apache License 2.0 - see the [LICENSE](https://github.com/gencatcloud/terraform-aws-elasticache/blob/master/LICENSE) file for details.
