output "tfstate_primary_access_key" {
  description = "Primary access key for the tfstate storage account"
  value       = azurerm_storage_account.tfstate.primary_access_key
  sensitive   = true
}

output "tfstate_blob_connection_string" {
  description = "Blob connection string for the tfstate storage account"
  value       = azurerm_storage_account.tfstate.primary_blob_connection_string
  sensitive   = true
}