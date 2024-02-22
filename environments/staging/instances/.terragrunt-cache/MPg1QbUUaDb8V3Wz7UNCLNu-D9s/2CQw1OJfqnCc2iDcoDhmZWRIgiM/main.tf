terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.8"
    }
  }
}
provider "aws" {
  profile = "default"
  region  = var.aws_region
}