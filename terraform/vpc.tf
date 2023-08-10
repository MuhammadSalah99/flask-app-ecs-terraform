data "aws_availability_zones" "azs" {}

resource "aws_vpc" "vpc" {
  cidr_block            = var.vpc_cidr
  enable_dns_hostnames  = true
  enable_dns_support    = true

  tags = {
    Name = "flask-docker-vpc"
  }
}
