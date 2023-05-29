# Initializes Terraform providers and sets their version numbers.

terraform {
  backend "local" {
  }
 
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.58.0"
    }
  }
 
}
 
provider "azurerm" {
  features {}
}