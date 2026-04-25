data "azurerm_resource_group" "resource_group_data_block" {
  name = var.resource_group_name
}

data "azurerm_network_interface" "network_interface_data_block" {
  name                = var.network_interface_name
  resource_group_name = data.azurerm_resource_group.resource_group_data_block.name
}

data "azurerm_key_vault" "key_vault_data_block" {
  name                = var.key_vault_name
  resource_group_name = data.azurerm_resource_group.resource_group_data_block.name
}

data "azurerm_key_vault_secret" "key_vault_secret_data_block" {
  name         = var.vm_admin_pass_secret_name
  key_vault_id = data.azurerm_key_vault.key_vault_data_block.id
}

data "azurerm_key_vault_secret" "key_vault_secret_adminusername_data_block" {
  name         = var.vm_admin_username_secret
  key_vault_id = data.azurerm_key_vault.key_vault_data_block.id
}