## Requirements

| Name | Version |
|------|---------|
| terraform | ~> 0.12.6 |
| cloudflare | >= 2.0 |
| google | >= 3.21 |

## Providers

| Name | Version |
|------|---------|
| cloudflare | >= 2.0 |
| google | >= 3.21 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| cloud\_location | Multi-Cloud: Mapping of cloud regions for multi-cloud. | `map` | n/a | yes |
| domain | CloudFlare: Your Domain name | `string` | n/a | yes |
| email | CloudFlare: Owner's e-mail | `string` | n/a | yes |
| environment | Common: Environment name | `string` | n/a | yes |
| gcp\_project | GCP: Google Cloud Platform project name | `string` | n/a | yes |
| image | HAProxy (GCP): Image for HAProxy deployment | `string` | `"ubuntu-os-cloud/ubuntu-1804-lts"` | no |
| ips | List of IPs to route traffic | `list(string)` | `[]` | no |
| location | Multi-Cloud: Abstract location name | `string` | n/a | yes |
| name | Common: Resources name | `string` | n/a | yes |
| subnet\_id | HAProxy (GCP): Subnet ID HAProxy deployment | `string` | n/a | yes |
| vpc\_id | HAProxy (GCP): VPC ID HAProxy deployment | `string` | n/a | yes |
| zone\_id | CloudFlare: Zone ID (if null - filter will be used) | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| hostname | Created record |

