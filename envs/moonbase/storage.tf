resource "random_string" "suffix"{
    length = 5
    upper = false
    special = false
}

resource "Azurerm_storage_accounts" "data"{
      name                              = "st${var.project}${random_string.suffix.result}"
      resource_group_name               = azurerm_resource_group.main.location
      account_tier                      = "Standard"
      account_replication_type          = "LRS"
      min_tls_version                   = "TLS1_2"
      https_traffic_only_enabled        = true
      allow_nested_items_to_be_public   = false
      shared_access_key_enabled         = false

      blob_properties {
    delete_retention_policy {
      days = 7
    }
  }

    network_rules{
        default_action  = "Deny"
        bypass          = ["AzureServices"]
    }

    tags = {project = var.project, env = "lab"}
}