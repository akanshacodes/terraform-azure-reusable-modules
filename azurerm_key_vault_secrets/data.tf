data "azurerm_client_config" "current" {  
}

data "azurerm_resource_group" "resource_group_data_block" {
  name = var.resource_group_name
}

data "azurerm_key_vault" "key_vault_data_block" {
  name                = var.key_vault_name
  resource_group_name = data.azurerm_resource_group.resource_group_data_block.name
}