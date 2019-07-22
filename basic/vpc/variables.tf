#variables vpc

variable "name" {
  type = string
}

variable "project" {
  type = string
}

variable "auto_create_subnetworks"{
  type    = bool
  default = false
}

variable "description" {
  type    = string
  default = ""
}
