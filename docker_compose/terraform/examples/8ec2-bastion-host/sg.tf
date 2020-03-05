resource "aws_security_group" "sg_instance" {
  name = "${var.name}-sg-instance"
  description = "Allow SSH"
  vpc_id      = module.vpc_module.aws_vpc_id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.sg_whitelist]
  }

  dynamic "ingress" {
    for_each = var.sg_whitelist_list
    content {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = [ingress.value]
    }
  }
}
