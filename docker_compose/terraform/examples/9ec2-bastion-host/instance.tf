module "vpc_module" {
  source      = "/project/terraform/modules/vpc"
  name        = var.name
  subnet_pub  = var.subnet_pub
  subnet_priv = var.subnet_priv
}

resource "aws_instance" "example" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  subnet_id     = module.vpc_module.aws_private_subnet_id
  key_name      = aws_key_pair.ssh_key.id
  vpc_security_group_ids = [
    aws_security_group.sg_instance.id
  ]

  tags = {
    Name = "${var.name}-web"
  }
  user_data = data.template_cloudinit_config.cloud_init_example.rendered
}


data "template_file" "cloud_init_tpl" {
  template = "${file("templates/example.tpl")}"

  # vars = {
  #   name = value, even from tf
  # }
}

data "template_cloudinit_config" "cloud_init_example" {
  gzip          = false
  base64_encode = false

  part {
    filename     = "init.cfg"
    content_type = "text/cloud-config"
    content      = data.template_file.cloud_init_tpl.rendered
  }
}
