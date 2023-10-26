# general project settings
variable "prefix" {
  description = "prefix used to prepend resource names"
  type        = string
  # default     = "demo"
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
  # default     = "West US 2"
}

# resource specific configurations
variable "rg_name" {
  description = "name of the exisitng resource group to use for deployment"
  type        = string
  default     = null
  # default = "code-test-jb"
}

variable "vnet_cidr" {
  type        = list(string)
  description = "CIDR block of the virtual network"
  default     = ["172.16.0.0/16"]
}

variable "subnet_names" {
  description = "A list of public subnets inside the vNet."
  type        = list(string)
  default     = ["subnet1", "subnet2", "subnet3"]
}

variable "subnet_prefixes" {
  description = "The address prefix to use for the subnet."
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}
