# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used.

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0.2"
    }
    # time = {
    #   source  = "hashicorp/time"
    #   version = ">= 0.7.0"
    # }
  }
}