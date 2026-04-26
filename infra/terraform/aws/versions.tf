terraform {
  required_version = ">= 1.9.0"
  required_providers {
    aws        = { source = "hashicorp/aws",        version = "~> 5.70" }
    kubernetes = { source = "hashicorp/kubernetes", version = "~> 2.32" }
    helm       = { source = "hashicorp/helm",       version = "~> 2.15" }
    random     = { source = "hashicorp/random",     version = "~> 3.6" }
  }
  backend "s3" {
    bucket         = "gridforge-tfstate-aws"
    key            = "gridforge/aws/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "gridforge-tfstate-locks"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region
  default_tags {
    tags = { Project = "gridforge", Environment = var.environment, ManagedBy = "terraform", Cloud = "aws" }
  }
}
