resource "snowflake_role" "this" {
  name = var.role_name
}

resource "snowflake_grant_privileges_to_role" "database_grant" {
  role_name       = snowflake_role.this.name
  privileges      = ["USAGE", "CREATE SCHEMA"]
  on_database     = var.database_name
}

resource "snowflake_grant_privileges_to_role" "warehouse_grant" {
  role_name      = snowflake_role.this.name
  privileges     = ["USAGE"]
  on_warehouse   = var.warehouse_name
}
