# Create a resource group
resource "azurerm_resource_group" "this" {
  name     = "${var.prefix}-rg"
  location = var.region
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "this" {
  name                = "${var.prefix}-vnet"
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  address_space       = var.vnet_cidr
}
