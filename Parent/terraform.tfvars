# ============================================================
# RESOURCE GROUP
# ============================================================
resource_group_name     = "akansha-rg-custom"
resource_group_location = "North Europe"


# ============================================================
# VIRTUAL NETWORK
# ============================================================
virtual_network_name          = "akansha-vnet-custom"
virtual_network_address_space = ["10.0.0.0/20"]


# ============================================================
# SUBNETS
# ============================================================
frontend_subnet_name     = "akansha-frontend-subnet-custom"
frontend_subnet_prefixes = ["10.0.1.0/24"]

backend_subnet_name     = "akansha-backend-subnet-custom"
backend_subnet_prefixes = ["10.0.2.0/24"]


# ============================================================
# FRONTEND NETWORKING
# ============================================================
frontend_public_ip_name    = "akansha-pip-frontend-custom"
frontend_nsg_name          = "akansha-frontend-nsg-custom"
frontend_nsg_allowed_ports = [22, 80]

frontend_nic_name           = "akansha-nic-frontend-custom"
frontend_nic_ip_config_name = "frontend-ip-config"


# ============================================================
# FRONTEND VM
# ============================================================
frontend_vm_name      = "akansha-frontend-vm"
frontend_vm_size      = "Standard_B1s"
frontend_vm_publisher = "Canonical"
frontend_vm_offer     = "0001-com-ubuntu-server-jammy"
frontend_vm_sku       = "22_04-lts"
frontend_vm_version   = "latest"


# ============================================================
# BACKEND NETWORKING
# ============================================================
backend_public_ip_name    = "akansha-pip-backend-custom"
backend_nsg_name          = "akansha-backend-nsg-custom"
backend_nsg_allowed_ports = [22, 8000]

backend_nic_name           = "akansha-nic-backend-custom"
backend_nic_ip_config_name = "backend-ip-config"


# ============================================================
# BACKEND VM
# ============================================================
backend_vm_name      = "akansha-backend-vm"
backend_vm_size      = "Standard_B1s"
backend_vm_publisher = "Canonical"
backend_vm_offer     = "0001-com-ubuntu-server-focal"
backend_vm_sku       = "20_04-lts"
backend_vm_version   = "latest"


# ============================================================
# SQL
# ============================================================
sql_server_name   = "akanshasqlserver123" # globally unique hona chahiye
sql_database_name = "akansha-database-custom"


# ============================================================
# KEY VAULT
# ============================================================
key_vault_name = "akanshakv123" # globally unique hona chahiye