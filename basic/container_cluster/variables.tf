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

variable "subnetwork" {
  type = string
}