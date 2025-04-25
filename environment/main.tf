terraform {
  required_providers {
    snowflake = {
      source = "Snowflake-Labs/snowflake"
      version = "~> 0.87"
    }
  }
}

provider "snowflake" {
  organization_name  = var.SNOWFLAKE_ORGANIZATION_NAME
  account_name  = var.SNOWFLAKE_ACCOUNT_NAME
  user          = var.SNOWFLAKE_USER
  private_key   = base64decode(var.SNOWFLAKE_PRIVATE_KEY)
  authenticator = "SNOWFLAKE_JWT"
  role          = "ACCOUNTADMIN"
}


module "database" {
  source        = "../modules/database"
  database_name = var.database_name
}

module "warehouse" {
  source         = "../modules/warehouse"
  warehouse_name = var.warehouse_name
  warehouse_size = var.warehouse_size
}

module "roles" {
  source         = "../modules/roles"
  role_name      = var.role_name
  database_name  = module.database.database_name
  warehouse_name = module.warehouse.warehouse_name
}
