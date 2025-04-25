variable "database_name" {
  default = "DEV_DATABASE"
}

variable "warehouse_name" {
  default = "DEV_WAREHOUSE"
}

variable "warehouse_size" {
  default = "X-SMALL"
}

variable "role_name" {
  default = "DEV_ROLE"
}

variable "SNOWFLAKE_ORGANIZATION_NAME" {
  default = "YILFLZT"
}

variable "SNOWFLAKE_ACCOUNT_NAME" {
  default = "KEB73082"
}

variable "SNOWFLAKE_USER" {
  default = "ZACKHADD"
}

variable "SNOWFLAKE_PRIVATE_KEY" {
  description = "Base64 encoded Snowflake private key"
  sensitive   = true
}
