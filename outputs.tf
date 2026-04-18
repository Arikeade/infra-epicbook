output "frontend_public_ip" {
  description = "Frontend VM public IP"
  value       = azurerm_public_ip.frontend_pip.ip_address
}

output "backend_public_ip" {
  description = "Backend VM public IP"
  value       = azurerm_public_ip.backend_pip.ip_address
}

output "mysql_fqdn" {
  description = "MySQL server FQDN"
  value       = azurerm_mysql_flexible_server.mysql.fqdn
}

output "resource_group_name" {
  description = "Resource group name"
  value       = azurerm_resource_group.rg.name
}