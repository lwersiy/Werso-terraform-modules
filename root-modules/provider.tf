terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.69.0"
    }

  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

# provider "azurerm" {
#   # Configuration options
#   features {

#   }
# }

# provider "github" {
#   token = ""
# }

# # provider "random" = {
# #       source  = "hashicorp/random"
# #       version = "3.1.0"
# #     }


# # provider "kubernetes" = {
# #       source  = "hashicorp/kubernetes"
# #       version = ">= 2.0.1"
# #     }