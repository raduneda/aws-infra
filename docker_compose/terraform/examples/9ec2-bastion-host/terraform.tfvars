instance_type = "t2.micro"
instance_ami  = "ami-0ce49ca477b768354"
name          = "terraform"
sg_whitelist_list = [
  "86.122.208.36/32",
  "0.0.0.0/0"
]

nat_instance_ami = "ami-024107e3e3217a248"
