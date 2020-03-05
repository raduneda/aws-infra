resource "aws_route_table" "rt_pub" {
  vpc_id = module.vpc_module.aws_vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gw.id
  }

  tags = {
    Name = "${var.name}-rt-pub"
  }
}

resource "aws_route_table_association" "parador_rta_pub" {
  subnet_id      = module.vpc_module.aws_public_subnet_id
  route_table_id = aws_route_table.rt_pub.id
}