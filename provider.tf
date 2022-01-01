  terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.90.0"
    }

    
  }
}

provider "azurerm" {
  # Configuration options
  features {
    
  }
}

terraform {
  backend "azurerm" {
    resource_group_name  = "NetworkWatcherRG"
    storage_account_name = "aliliastorage1234"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
  
}