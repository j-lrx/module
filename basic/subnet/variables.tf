#Variables subnet

variable "name" {
  type = string
}

variable "project" {
  type = string
}

variable "network" {
  type = string
}

variable "region" {
  type    = string
  default = "europe-west1"
}

variable "cidr_range" {
  type = string
}

variable "enable_flow_logs" {
  type    = bool
  default = false
}
