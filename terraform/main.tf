data "azurerm_client_config" "current" {}

#Create Resource Group
resource "azurerm_resource_group" "rg" {
  name     = "kart-dev-rg-1"
  location = "centralindia"
}

#Create Virtual Network
resource "azurerm_virtual_network" "vnet" {
  name                = "kartdev-vnet-1"
  address_space       = ["192.168.0.0/16"]
  location            = "centralindia"
  resource_group_name = azurerm_resource_group.rg.name
}

# Create Subnet
resource "azurerm_subnet" "subnet" {
  name                 = "kartdev-subnet-1"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["192.168.0.0/24"]
}