
resource "aws_instance" "nat_instance" {
  ami           = var.nat_instance_ami
  instance_type = var.instance_type
  subnet_id     = module.vpc_module.aws_public_subnet_id
  key_name      = aws_key_pair.ssh_key.id
  vpc_security_group_ids = [
    aws_security_group.sg_nat_instance.id
  ]
  
  associate_public_ip_address = true
  # Disable source/destination checks as per https://docs.aws.amazon.com/vpc/latest/userguide/VPC_NAT_Instance.html
  source_dest_check = false

  tags = {
    Name = "${var.name}-nat_instance"
  }
}