variable "name" {
  type = string
  default = "ip_address"
}

variable "project" {
  type = string
}

variable "purpose" {
  type = string
}

variable "address_type" {
  type = string
  default = "INTERNAL"
}

variable "network" {
  type = string
}
