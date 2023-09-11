## backend data for terraform
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  backend "s3" {
    bucket = "madurai87349821"
    key    = "maduraibackend.tfstate"
    region = "us-east-1"
  
  }
}

provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "test_instance" {
  ami           = "ami-051f7e7f6c2f40dc1"
  instance_type = "t2.micro"
  tags = {
    Name = "test4_instance"
  }
}