variable "name" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "nat_instance_ami" {
  type = string
}

variable "instance_ami" {
  type = string
}

variable "sg_whitelist_list" {
  type = list
}

variable "subnet_pub" {
  type = list
  default = [
    {
      cidr = "10.12.10.0/24"
      az   = "eu-west-1a"
    }
  ]
}

variable "subnet_priv" {
  type = list
  default = [
    {
      cidr = "10.12.50.0/24"
      az   = "eu-west-1a"
    }
  ]
}