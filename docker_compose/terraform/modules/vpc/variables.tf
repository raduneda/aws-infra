variable "name" {
  type = string
}

variable "vpc_cidr" {
  type = string
  default = "10.12.0.0/16"
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

variable "enable_dns_hostnames" {
  type = bool
  default = true
}

variable "map_public_ip_on_launch" {
  type = bool
  default = false
}