terraform {
  backend "azurerm" {
    resource_group_name  = "-rg"
    storage_account_name = "storge2992"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}