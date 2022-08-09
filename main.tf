provider "aws" {
  region = var.region

  default_tags {
    tags = {
      hashicorp-learn = "circleci"
    }
  }
}

resource "random_uuid" "randomid" {}

resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC - Created from CircleCI"
  }
  force_destroy = true
}

