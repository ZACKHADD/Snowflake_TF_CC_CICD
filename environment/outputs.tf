output "database_name" {
  description = "The name of the created database in dev"
  value       = module.database.database_name
}

output "warehouse_name" {
  description = "The name of the created warehouse in dev"
  value       = module.warehouse.warehouse_name
}

output "role_name" {
  description = "The name of the created role in dev"
  value       = module.roles.role_name
}