variable "name" {
  type = string
}

#zone or region
variable "location" {
  type = string
}

variable "cluster" {
  type = string
}

variable "min_node_count" {
  type    = number
  default = 1
}

variable "max_node_count" {
  type    = number
  default = 12
}

variable "machine_type" {
  type    = string
  default = "n1-standard-1"
}


variable "preemtible" {
  type    = bool
  default = false
}


variable "auto_repair" {
  type    = bool
  default = true
}

variable "auto_upgrade" {
  type    = bool
  default = false
}
