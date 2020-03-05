instance_type           = "t2.micro"
instance_ami            = "ami-0ce49ca477b768354"
name                    = "terraform"
map_public_ip_on_launch = true
sg_whitelist_list = [
  "86.122.208.36/32",
  "0.0.0.0/32"
]
sg_whitelist = "0.0.0.0/32"
