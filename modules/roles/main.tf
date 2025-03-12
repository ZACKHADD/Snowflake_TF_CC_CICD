terraform {
  required_providers {
    snowflake = {
      source = "Snowflake-Labs/snowflake"
      version = "~> 0.87"
    }
  }
}

resource "snowflake_account_role" "this" {
  name = var.role_name
}

resource "snowflake_grant_privileges_to_account_role" "database_grant" {
  account_role_name       = snowflake_account_role.this.name
  privileges      = ["USAGE", "CREATE SCHEMA"]
  on_account_object {
    object_type = "DATABASE"
    object_name = var.database_name
  }
}

resource "snowflake_grant_privileges_to_account_role" "warehouse_grant" {
  account_role_name      = snowflake_account_role.this.name
  privileges     = ["USAGE"]
    on_account_object {
    object_type = "WAREHOUSE"
    object_name = var.warehouse_name
  }
}
