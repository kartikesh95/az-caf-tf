# Obtain client configuration from the un-aliased provider
data "azurerm_client_config" "core" {
  provider = azurerm
}

# Obtain client configuration from the "management" provider
data "azurerm_client_config" "management" {
  provider = azurerm.management
}

# Obtain client configuration from the "connectivity" provider
data "azurerm_client_config" "connectivity" {
  provider = azurerm.connectivity
}

# Declare the Terraform Module for Cloud Adoption Framework
# Enterprise-scale and provide a base configuration.
module "enterprise_scale" {
  source  = "Azure/caf-enterprise-scale/azurerm"
  version = "2.4.1"

  providers = {
    azurerm              = azurerm
    azurerm.connectivity = azurerm.connectivity
    azurerm.management   = azurerm.management
  }

  # Set the required input variable `root_parent_id` using the Tenant ID from the un-aliased provider
  root_parent_id = data.azurerm_client_config.core.tenant_id
  root_id        = "kartlabs"
  root_name      = "Kartikesh Labs"

  # Enable deployment of the management resources, using the management
  # aliased provider to populate the correct Subscription ID
  deploy_management_resources = true
  subscription_id_management  = data.azurerm_client_config.management.subscription_id

}