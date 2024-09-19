terraform {
  cloud { 
    
    organization = "Adarshk" 

    workspaces { 
      name = "develop01" 
    } 
  }

  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.0.1"
    }
  }
}

provider "azurerm" {
  features{}
 # subscription_id             = "e7792daf-ec91-464d-967f-d21cba72f748"
}
