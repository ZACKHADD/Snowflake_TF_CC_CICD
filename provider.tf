terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.87"
    }
  }
}

provider "snowflake" {
  account_name  = var.SNOWFLAKE_ACCOUNT
  organization_name  = var.SNOWFLAKE_ORGANIZATION
  user          = var.SNOWFLAKE_USER
  private_key   = file("C:/Users/ZAKARIA/.ssh/snowflake_tf_snow_key.p8")
  authenticator = "SNOWFLAKE_JWT"
  role          = "SYSADMIN"
}



variable "SNOWFLAKE_ACCOUNT" {
  
}

variable "SNOWFLAKE_ORGANIZATION" {
  
}

variable "SNOWFLAKE_USER" {
  
}