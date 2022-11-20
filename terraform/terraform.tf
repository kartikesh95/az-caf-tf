# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used.

terraform {
  required_version = "1.1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.77.0"
    }
    time = {
      source  = "hashicorp/time"
      version = ">= 0.7.0"
    }
  }
}