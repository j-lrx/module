variable "name" {
  type = string
}

#region or zone
variable "location" {
  type    = string
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

variable "node_ipv4_cidr" {
  type = string
}

variable "cluster_ipv4_cidr" {
  type = string
}

variable "services_ipv4_cidr" {
  type = string
}