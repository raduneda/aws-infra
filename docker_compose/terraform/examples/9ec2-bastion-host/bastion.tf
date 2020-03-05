
resource "aws_instance" "bastion" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  subnet_id     = module.vpc_module.aws_public_subnet_id
  key_name      = aws_key_pair.ssh_key.id
  vpc_security_group_ids = [
    aws_security_group.sg_bastion.id
  ]
  associate_public_ip_address = true

  tags = {
    Name = "${var.name}-bastion"
  }
}