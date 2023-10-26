# Create a resource group
resource "azurerm_resource_group" "rg" {
  count    = var.rg_name == null ? 1 : 0
  name     = "${var.prefix}-rg"
  location = var.region
}

# Create a virtual network within the resource group
# resource "azurerm_virtual_network" "this" {
#   name                = "${var.prefix}-vnet"
#   resource_group_name = azurerm_resource_group.this.name
#   location            = azurerm_resource_group.this.location
#   address_space       = var.vnet_cidr
# }

module "vnet" {
  source  = "Azure/network/azurerm"
  version = "~>5.3.0"

  resource_group_name = var.rg_name == null ? azurerm_resource_group.rg[0].name : var.rg_name
  vnet_name           = "${var.prefix}-vnet"
  address_spaces      = var.vnet_cidr
  subnet_names        = var.subnet_names
  subnet_prefixes     = var.subnet_prefixes

  use_for_each = true
}
