terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.61.0"
    }
  }

  backend "s3" { # utilizando um bucket do s3 para armazenamento do backend (terraform.state)
    bucket = "s3-tf-states-backend"
    key    = "ec2/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}