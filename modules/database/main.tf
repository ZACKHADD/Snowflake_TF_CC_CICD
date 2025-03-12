terraform {
  required_providers {
    snowflake = {
      source = "Snowflake-Labs/snowflake"
      version = "~> 0.87"
    }
  }
}

resource "snowflake_database" "this" {
  name    = var.database_name
  comment = var.database_comment
}