terraform {
  required_version = ">= 1.11"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.79, < 6.0"
    }
  }

  # Remote state in S3. Replace 680160265876. use_lockfile needs Terraform 1.11 or newer.
  backend "s3" {
    bucket       = "cicd-demo-tfstate-680160265876"
    key          = "cicd-demo/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}

provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Project   = "cicd-demo"
      ManagedBy = "terraform"
    }
  }
}
