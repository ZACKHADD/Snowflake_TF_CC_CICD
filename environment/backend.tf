terraform {
  backend "azurerm" {
    resource_group_name  = "Eco_demos"         # The name of the resource group containing the storage account
    storage_account_name = "ecodemostorage"    # The name of the storage account
    container_name       = "terraformcicd"     # The container in the blob storage where the state file will be stored
    key                  = "terraform_SRV_dev.tfstate" # The name of the state file (it can be any name, usually terraform.tfstate or per environment)
  }
}