variable "name" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "instance_ami" {
  type = string
}

variable "map_public_ip_on_launch" {
  type    = bool
  default = false
}

variable "sg_whitelist" {
  type = string
}

variable "sg_whitelist_list" {
  type = list
}
