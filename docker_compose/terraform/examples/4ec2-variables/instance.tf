resource "aws_instance" "example" {
  ami           = var.instance_ami
  instance_type = var.instance_type
}