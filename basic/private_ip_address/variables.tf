variable "name" {
  type    = string
  default = "ip_address"
}

variable "project" {
  type = string
}

variable "purpose" {
  type    = string
  default ="VPC_PEERING"
}

variable "address_type" {
  type    = string
  default = "INTERNAL"
}

variable "network" {
  type = string
}

variable "ip_version" {
  type    = string
  default = "IPV4"
}
