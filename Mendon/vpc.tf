# Creating a VPC resource
resource "aws_vpc" "default" {
  cidr_block           = "${var.vpc_cidr_block}"
  enable_dns_hostnames = true

  tags ={
    Name = "${var.namespace}"
  }
}

# Grab the list of availability zones
data "aws_availability_zones" "available" {
}
