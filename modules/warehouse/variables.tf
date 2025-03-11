variable "warehouse_name" {
  description = "The name of the Snowflake warehouse"
  type        = string
}

variable "warehouse_size" {
  description = "The size of the warehouse (X-SMALL, SMALL, MEDIUM, etc.)"
  type        = string
}

variable "auto_suspend" {
  description = "Time in seconds before warehouse auto-suspends"
  type        = number
  default     = 300
}
