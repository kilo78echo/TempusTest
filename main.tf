terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

module "network" {
  source              = "./modules/network"
  cidr_block          = var.cidr_block
  public_subnet_cidr  = var.public_subnet_cidr
  az                  = var.az
}

module "storage" {
  source      = "./modules/storage"
  bucket_name = var.bucket_name
  environment = var.environment
}

output "network_vpc_id" {
  value = module.network.vpc_id
}
output "storage_bucket_id" {
  value = module.storage.bucket_id
}
