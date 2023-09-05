## backend data for terraform
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  backend "remote" {
    bucket = "madurai87349821"
    key    = "maduraibackend.tfstate"
    region = "us-east-1"
  
  }
}

provider "aws" {
  region = "us-east-1"
}