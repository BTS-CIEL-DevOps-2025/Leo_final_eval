resource "azurerm_resource_group" "resources_partagees" {
  name     = "leo_final_eval_rg"
  location = "France Central"
}

resource "azurerm_storage_account" "leo_final_eval_rg" {
  name                     = "btsciel2finaleval"
  resource_group_name      = azurerm_resource_resources_partagees.name
  location                 = azurerm_resource_group.leo_final_eval_rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}

# commentaire pour tester la pull request test2