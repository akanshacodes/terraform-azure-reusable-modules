
resource "azurerm_mssql_server" "sql_server" {
  name                         = var.sql_server_name
  resource_group_name          = data.azurerm_resource_group.resource_group_data_block.name
  location                     = data.azurerm_resource_group.resource_group_data_block.location
  version                      = "12.0"
  administrator_login          = data.azurerm_key_vault_secret.sql_server_admin_login_secret_data_block.value
  administrator_login_password = data.azurerm_key_vault_secret.sql_server_admin_password_data_block.value
}