# The following providers are used to enable deployment to one or more 
# Subscriptions.

provider "azurerm" {
  # The "feature" block is required for AzureRM provider 2.x.
  # If you're using version 1.x, the "features" block is not allowed.
  features {}
}

provider "azurerm" {
  alias           = "management"
  subscription_id = local.subscription_id_management
  features {}
}

provider "azurerm" {
  alias           = "connectivity"
  subscription_id = local.subscription_id_connectivity
  features {}
}