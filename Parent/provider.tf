terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.70.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "7f9ffab5-15de-40df-80c3-9f0897275cd1"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "akanshargs"
    storage_account_name = "akanshastorage"
    container_name       = "akanshabackenctn"
    key                  = "akansha.tfstate"
  }
}