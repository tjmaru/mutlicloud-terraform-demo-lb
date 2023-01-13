#######################
# Multi-Cloud Variables
#######################
variable "cloud_location" {
  description = "Multi-Cloud: Mapping of cloud regions for multi-cloud."
  type        = map
}

variable "location" {
  description = "Multi-Cloud: Abstract location name"
  type        = string
}
##################
# Common variables
##################
variable "name" {
  description = "Common: Resources name"
  type        = string
}

variable "environment" {
  description = "Common: Environment name"
  type        = string
}

variable "ips" {
  description = "List of IPs to route traffic"
  type        = list(string)
  default     = []
}
###############
# GCP variables
###############
variable "gcp_project" {
  description = "GCP: Google Cloud Platform project name"
  type        = string
}
#########
# HAProxy
#########
variable "image" {
  description = "HAProxy (GCP): Image for HAProxy deployment"
  type        = string
  default     = "ubuntu-os-cloud/ubuntu-1804-lts"
}

variable "subnet_id" {
  description = "HAProxy (GCP): Subnet ID HAProxy deployment"
  type        = string
}

variable "vpc_id" {
  description = "HAProxy (GCP): VPC ID HAProxy deployment"
  type        = string
}

