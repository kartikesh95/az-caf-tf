terraform {
  backend "azurerm" {
    resource_group_name  = "kartazcaftfstates"
    storage_account_name = "kartazcaftfstate01"
    container_name       = "kartazcaftfstatedev"
    key                  = "kartazcaftfstatedev.tfstate"
  }
}