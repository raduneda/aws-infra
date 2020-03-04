resource "aws_instance" "example" {
  ami           = "ami-0ce49ca477b768354"
  instance_type = "t2.micro"
  key_name = aws_key_pair.ssh_key.id
  # vpc_security_group_ids = ["sg-0077..."]
  # subnet_id = "subnet-923a..."
}