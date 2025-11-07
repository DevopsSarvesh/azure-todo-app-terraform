terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.85.0"
    }
  }
    backend "azurerm" {
    resource_group_name  = "devops_rg"
    storage_account_name = "skdevstg"
    container_name       = "sktfstate"
    key                  = "tfstate"
  }
}
provider "azurerm" {
  features {}
  subscription_id = "3c5a5847-bba8-4a7e-b700-87684df57784"
  skip_provider_registration = true
}