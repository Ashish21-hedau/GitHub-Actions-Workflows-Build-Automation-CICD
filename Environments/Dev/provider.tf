terraform {
  required_providers {
    azurem={
      source = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
    backend "azurerm" {
    resource_group_name  = "Prob-GithubAction-ResourceGroup"
    storage_account_name = "githubaction1234"
    container_name       = "githubactiontfstate"
    key                  = "prod.terraform.tfstate"
  }
}

provider "azurem" {
  features {
    
  }
  subscription_id = "54db10a3-bd86-4105-8cb9-8454e707392d"
}