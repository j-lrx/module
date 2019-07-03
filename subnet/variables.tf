#Variables subnet

variable "name" {
  type = string
}

variable "cicr_range" {
  type = string
}

variable "network_id" {
  type = string
}

variable "enable_flow_logs" {
  type    = bool
  default = false
}

variable "region" {
  type    = string
  default = "europe-west1"
}

variable "project_id" {
  type = string
}
