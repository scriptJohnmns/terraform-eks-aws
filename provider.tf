terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.15.0"
    }
  }
}
terraform {
  backend "s3" {
    bucket = "joaodevops-bucket01"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}
provider "aws" {
  region = "us-east-1"
}