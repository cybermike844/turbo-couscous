resource "aws_vpc" "three-tier-vpc" {
  cidr_block = "${var.vpc_cidr}"
  instance_tenancy = "default"
tags {
  Name = "three-tier-vpc"
}
}
