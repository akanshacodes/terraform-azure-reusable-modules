# terraform plan -var-file="./akanshacustom.tfvars"
# terraform apply -var-file="./akanshacustom.tfvars" -auto-approve

# ============================================================
# FRONTEND VM SECRETS
# ============================================================
frontend_vm_admin_username_key   = "frontend-admin-username"
frontend_vm_admin_username_value = "frontend-user"

frontend_vm_admin_password_key   = "frontend-admin-password"
frontend_vm_admin_password_value = "DemoStrongPass123!"


# ============================================================
# BACKEND VM SECRETS
# ============================================================
backend_vm_admin_username_key   = "backend-admin-username"
backend_vm_admin_username_value = "backend-user"

backend_vm_admin_password_key   = "backend-admin-password"
backend_vm_admin_password_value = "DemoStrongPass456!"


# ============================================================
# SQL SERVER SECRETS
# ============================================================
sql_server_admin_login_key   = "sql-admin-username"
sql_server_admin_login_value = "sqladminuser"

sql_server_admin_password_key   = "sql-admin-password"
sql_server_admin_password_value = "DemoStrongPass789!"