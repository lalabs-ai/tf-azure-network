# general project settings
variable "prefix" {
  description = "prefix used to prepend resource names"
  type        = string
  default     = "demo"
}

variable "subscription_id" {
  description = "azure subscription to configure provider"
  type        = string
}

variable "tenant_id" {
  description = "azure tenant to configure providerr"
  type        = string
}

variable "client_id" {
  description = "azure service principle appId to configure provider"
  type        = string
}

variable "client_secret" {
  description = "azure service principle password to configure provider"
  type        = string
}

variable "region" {
  description = "region to deploy infrastructure"
  type        = string
  default     = "West US 2"
}

# resource specific configurations
variable "vnet_cidr" {
  type        = list(string)
  description = "CIDR block of the virtual network"
  default     = ["172.16.0.0/16"]
}
