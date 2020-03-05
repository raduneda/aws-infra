module "vpc_module" {
  source = "/project/terraform/modules/vpc"
  name   = var.name
  map_public_ip_on_launch=var.map_public_ip_on_launch
}

resource "aws_instance" "example" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  subnet_id     = module.vpc_module.aws_public_subnet_id
  key_name = aws_key_pair.ssh_key.id
  vpc_security_group_ids = [
    aws_security_group.sg_instance.id
  ]
}
