data "azurerm_resource_group" "resource_group_data_block" {
  name = var.resource_group_name
}

data "azurerm_virtual_network" "virtual_network_data_block" {
  name                = var.virtual_network_name
  resource_group_name = data.azurerm_resource_group.resource_group_data_block.name
}

data "azurerm_subnet" "subnet_data_block" {
  name                 = var.subnet_name
  virtual_network_name = data.azurerm_virtual_network.virtual_network_data_block.name
  resource_group_name  = data.azurerm_resource_group.resource_group_data_block.name
}

data "azurerm_public_ip" "public_ip_data_block" {
  name                = var.public_ip
  resource_group_name = data.azurerm_resource_group.resource_group_data_block.name
}

data "azurerm_network_security_group" "network_security_group_data_block" {
  name                = var.network_security_group_name
  resource_group_name = data.azurerm_resource_group.resource_group_data_block.name
}