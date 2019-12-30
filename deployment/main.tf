provider "aws" {
  region = "us-east-1"
}

terraform {
  required_providers {
    aws = "= 2.26.0"
  }
  backend "s3" {
	bucket = "tf-state-48729185794"
	key = "cert-manager"
	region = "us-east-1"
  }
}

module "dev_imageroulette_cert" {
  source = "./modules/acme_cert"
  acme_dir = var.acme_dir
  cert_name = "dev.imageroulette.cniles.dev"
}

module "randomreids_cert" {
  source = "./modules/acme_cert"
  acme_dir = var.acme_dir
  cert_name = "randomreids.com"
}

