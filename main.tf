resource "azurerm_resource_group" "rg1" {
  name     = "rg-${var.client}-${var.env}-${var.postfix}"
  location = var.rg_location
}
resource "azurerm_storage_account" "storage_account1" {
  name                     = "storageaccount456"
  resource_group_name      = azurerm_resource_group.rg1.name
  location                 = azurerm_resource_group.rg1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
