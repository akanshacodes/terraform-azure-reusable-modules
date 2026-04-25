



resource "azurerm_mssql_firewall_rule" "backend_vm_firewall_rule" {
  name                = "Allow-Backend-VM-IP"
  server_id           = data.azurerm_mssql_server.sql_server_data_block.id
  start_ip_address    = var.backend_public_ip_address
  end_ip_address      = var.backend_public_ip_address
  
}
