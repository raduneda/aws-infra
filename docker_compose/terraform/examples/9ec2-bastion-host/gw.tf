resource "aws_internet_gateway" "internet_gw" {
  vpc_id = module.vpc_module.aws_vpc_id

  tags = {
    Name = "${var.name}-gw"
  }
}
