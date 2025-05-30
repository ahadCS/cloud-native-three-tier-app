resource "azurerm_resource_group" "tfstate_rg" {
  name     = var.rg_name
  location = var.location
}

resource "azurerm_storage_account" "tfstate" {
  name                     = var.sa_name
  resource_group_name      = azurerm_resource_group.tfstate_rg.name
  location                 = azurerm_resource_group.tfstate_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "tfstate" {
  name                 = var.container
  storage_account_id     = azurerm_storage_account.tfstate.id
  container_access_type = "private"
}
