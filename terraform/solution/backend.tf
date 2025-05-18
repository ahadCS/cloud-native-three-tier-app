terraform {
  backend "azurerm" {
    resource_group_name  = "devops2-group3-storge-rg"
    storage_account_name = "devops2group3storge"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}