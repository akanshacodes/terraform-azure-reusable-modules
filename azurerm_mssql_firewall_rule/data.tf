data "azurerm_resource_group" "resource_group_data_block" {
  name = var.resource_group_name
}

data "azurerm_mssql_server" "sql_server_data_block" {
  name                = var.sql_server_name
  resource_group_name = data.azurerm_resource_group.resource_group_data_block.name
}