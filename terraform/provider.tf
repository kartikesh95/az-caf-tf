# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used.

terraform {
  backend "azurerm" {
    resource_group_name  = "kartazcaftfstates"
    storage_account_name = "kartazcaftfstate01"
    container_name       = "kartazcaftfstatedev"
    key                  = "kartazcaftfstatedev.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.0"
    }
  }
}

provider "azurerm" {
  # The "feature" block is required for AzureRM provider 2.x.
  # If you're using version 1.x, the "features" block is not allowed.
  features {}
}