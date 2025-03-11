resource "snowflake_warehouse" "this" {
  name           = var.warehouse_name
  warehouse_size = var.warehouse_size
  auto_suspend   = var.auto_suspend
  auto_resume    = true
  initially_suspended = false
}
