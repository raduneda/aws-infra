module "vpc_module" {
  source = "/project/terraform/modules/vpc"
  name   = var.name
}

resource "aws_instance" "example" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  subnet_id     = module.vpc_module.aws_public_subnet_id
}
