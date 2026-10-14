terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tfstate"
    storage_account_name = "mecuryeclipse"
    container_name       = "tfstate"
    key                  = "lab.tfstate"
    use_azuread_auth     = true
  }
}