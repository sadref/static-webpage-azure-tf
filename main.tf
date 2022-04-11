resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = "westus2"

  tags = {
    Environment = "surimi-static"
    Team        = "DevOps"
  }
}

resource "azurerm_storage_account" "staticwebpage" {
  name                = var.storage_account_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus"

  account_tier              = "Standard"
  account_kind              = "StorageV2"
  account_replication_type  = "GRS"
  enable_https_traffic_only = true

  static_website {
    index_document = "index.html"
  }
}
