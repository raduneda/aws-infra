resource "aws_key_pair" "ssh_key" {
  key_name   = "ec2-terraform-key-pair"
  # public_key = ""
  public_key = "${file("/project/.ssh/id_rsa.pub")}"  
}
