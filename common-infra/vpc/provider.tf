# variable "AWS_ACCESS_KEY" {

#   default = "terraform workspace variables"
# }

# variable "AWS_SECRET_KEY" {

#   default = "terraform workspace variables"
# }

provider "aws" {
  region = "ap-northeast-2"
  # access_key = var.AWS_ACCESS_KEY
  # secret_key = var.AWS_SECRET_KEY
}

terraform {
  required_providers {

    aws = {
      source  = "hashicorp/aws"
      version = "4.48.0"
    }
  }

  cloud {
    hostname     = "app.terraform.io" ## Fixed
    organization = "leedonggyu-org"   ## Organization Name

    ## Default Workspace
    workspaces {
      name = "eda"
    }
  }
}
