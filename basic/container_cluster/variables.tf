variable "name" {
  type = string
}

#region or zone
variable "location" {
  type    = string
  default = "europe-west-1"
}
variable "project" {
  type = string
}

variable "network" {
  type = string
}

variable "min_node" {
  type    = number
  default = 1
}

variable "max_node" {
  type = number
  default = 12
}

variable "auto_repair" {
  type    = bool
  default = true
}

variable "auto_upgrade" {
  type    = bool
  default = false
}
