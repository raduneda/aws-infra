resource "aws_vpc" "custom_vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = var.enable_dns_hostnames

  tags = {
    Name = "${var.name}-vpc"
  }
}

resource "aws_subnet" "custom_subnet_pub" {
  vpc_id            = aws_vpc.custom_vpc.id
  cidr_block        = lookup(var.subnet_pub[0], "cidr")
  availability_zone = lookup(var.subnet_pub[0], "az")

  tags = {
    Name = "${var.name}-subnet-pub"
  }
}
