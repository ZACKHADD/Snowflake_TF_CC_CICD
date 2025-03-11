output "warehouse_name" {
  description = "The name of the created warehouse"
  value       = snowflake_warehouse.this.name
}
