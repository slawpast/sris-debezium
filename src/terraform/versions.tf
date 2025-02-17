terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.93.0"
    }
  }
  backend "azurerm" {
  }
}

# Get configuration parameters from current deployment process

data "azurerm_client_config" "current" {}

data "azurerm_subscription" "current" {}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
  skip_provider_registration = true
  subscription_id            = var.SUBSCRIPTION_ID
  use_oidc                   = true
}