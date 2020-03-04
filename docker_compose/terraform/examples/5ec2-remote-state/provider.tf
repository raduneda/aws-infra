provider "aws" {
  version = "~> 2.0"
  region  = "eu-west-1"
}

terraform {
  backend "s3" {
    bucket = "tf-state-terraform-agile-hub"
    key    = "ec2-remote-state/state.json"
    region = "eu-west-1"
  }
}