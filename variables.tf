variable "location" {
  description = "Azure region"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
  default     = "rg-epicbook"
}

variable "vnet_name" {
  description = "Virtual network name"
  type        = string
  default     = "vnet-epicbook"
}

variable "vnet_address_space" {
  description = "VNet address space"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "app_subnet_name" {
  description = "Subnet for frontend and backend VMs"
  type        = string
  default     = "snet-app"
}

variable "app_subnet_prefixes" {
  description = "Address prefixes for app subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "db_subnet_name" {
  description = "Delegated subnet for MySQL Flexible Server"
  type        = string
  default     = "snet-db"
}

variable "db_subnet_prefixes" {
  description = "Address prefixes for db subnet"
  type        = list(string)
  default     = ["10.0.2.0/24"]
}

variable "frontend_vm_name" {
  description = "Frontend VM name"
  type        = string
  default     = "frontend-vm"
}

variable "backend_vm_name" {
  description = "Backend VM name"
  type        = string
  default     = "backend-vm"
}

variable "vm_size" {
  description = "VM size"
  type        = string
  default     = "Standard_B1s"
}

variable "admin_username" {
  description = "Admin username for VMs"
  type        = string
  default     = "azureuser"
}

variable "ssh_public_key_path" {
  description = "Path to SSH public key"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

variable "ssh_public_key" {
  description = "SSH public key content"
  type        = string
}

variable "mysql_admin_username" {
  description = "MySQL admin username"
  type        = string
  default     = "mysqladmin"
}

variable "mysql_admin_password" {
  description = "MySQL admin password"
  type        = string
  sensitive   = true
}

variable "mysql_sku_name" {
  description = "MySQL SKU"
  type        = string
  default     = "B_Standard_B1ms"
}

variable "mysql_db_name" {
  description = "MySQL database name"
  type        = string
  default     = "epicbookdb"
}