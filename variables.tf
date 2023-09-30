variable "prefix" {
  description = "prefix used to prepend resource names"
  type        = string
  default     = "demo"
}

variable "region" {
  description = "region to deploy infrastructure"
  type        = string
  default     = "West US 2"
}

variable "vnet_cidr" {
  type        = string
  description = "CIDR block of the virtual network"
  default     = "172.16.0.0/16"
}
