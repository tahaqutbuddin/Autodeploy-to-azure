# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }

  backend "azurerm" {
    storage_account_name = "logixosterraform"
    container_name       = "task4"
    key                  = "terraform.tfstate"
    resource_group_name  = "terraformStorage"
  }
}

provider "azurerm" {
  features {}
}

