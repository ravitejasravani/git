
resource "azurerm_resource_group" "sweety" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_storage_account" "sweety" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS

  }
}