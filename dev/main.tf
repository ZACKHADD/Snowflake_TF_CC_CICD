module "database" {
  source         = "../modules/database"
  database_name  = var.database_name
}

module "warehouse" {
  source          = "../modules/warehouse"
  warehouse_name  = var.warehouse_name
  warehouse_size  = var.warehouse_size
}

module "roles" {
  source        = "../modules/roles"
  role_name     = var.role_name
  database_name = module.database.database_name
  warehouse_name = module.warehouse.warehouse_name
}