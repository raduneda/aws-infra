resource "aws_instance" "example" {
  ami           = "ami-0ce49ca477b768354"
  instance_type = "t2.micro"
}