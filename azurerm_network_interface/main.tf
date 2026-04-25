

resource "azurerm_network_interface" "rit_nic" {
  name                = var.network_interface_name
  location            = data.azurerm_resource_group.resource_group_data_block.location
  resource_group_name = data.azurerm_resource_group.resource_group_data_block.name

  ip_configuration {
    name                          = var.network_interface_ip_configuration_name
    subnet_id                     = data.azurerm_subnet.subnet_data_block.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = data.azurerm_public_ip.public_ip_data_block.id
  }
}

# NIC Module — NSG attach karo NIC se
resource "azurerm_network_interface_security_group_association" "nsg_assoc" {
  network_interface_id      = azurerm_network_interface.rit_nic.id
  network_security_group_id = data.azurerm_network_security_group.network_security_group_data_block.id
}
