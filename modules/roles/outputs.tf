output "role_name" {
  description = "The name of the created role"
  value       = snowflake_account_role.this.name
}