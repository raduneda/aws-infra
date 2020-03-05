variable "name" {
  type = string
}

variable "vpc_cidr" {
  type = string
  default = "10.12.0.0/16"
}

variable "subnet_pub" {
  type = list
}

variable "subnet_priv" {
  type = list
}

variable "enable_dns_hostnames" {
  type = bool
  default = true
}