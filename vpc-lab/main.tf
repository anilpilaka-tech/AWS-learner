# Day 2 — root module call (replaces the flat main.tf pushed to GitHub).
#
# Same 9 resources, same CIDRs, same AZs, same Name tags — only their
# addresses in state move, via moved.tf. backend.tf is untouched
# (S3 state, same bucket/key). terraform plan after this refactor MUST
# show 0 to add, 0 to change, 0 to destroy.

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "lab_vpc" {
  source = "./modules/vpc"

  vpc_cidr             = var.vpc_cidr
  availability_zones   = var.availability_zones
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  name_prefix          = var.name_prefix

  enable_dns_support   = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames
}
