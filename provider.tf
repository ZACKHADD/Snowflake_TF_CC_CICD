terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.87"
    }
  }
}

provider "snowflake" {
  account = var.SNOWFLAKE_ACCOUNT
  user        = var.SNOWFLAKE_USER
  private_key = file("C:/Users/ZAKARIA/.ssh/snowflake_tf_snow_key.p8")
  authenticator   = "SNOWFLAKE_JWT"
  role            = "SYSADMIN"
}



variable "SNOWFLAKE_ACCOUNT" {
  default = "LMQRBKW-DU98221"
}

variable "SNOWFLAKE_USER" {
  default = "ZACKHADD"
}