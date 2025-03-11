variable "role_name" {
  description = "Name of the Snowflake role"
  type        = string
}

variable "database_name" {
  description = "Database to assign privileges to"
  type        = string
}

variable "warehouse_name" {
  description = "Warehouse to assign privileges to"
  type        = string
}


variable "assigned_warehouses" {
  description = "Warehouses to be assigned to this role"
  type        = list(string)
  default     = []
}