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

variable "project" {
  type = string
}

variable "min_node_count" {
  type    = number
  default = 1
}

variable "max_node_count" {
  type    = number
  default = 3
}

variable "machine_type" {
  type    = string
  default = "n1-standard-1"
}


variable "preemptible" {
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
