variable "project" {
 type = string 
}

variable "region" {
 type = string 
  default = "europe-west1"
}

variable "zone" {
 type = string
 default = "europe-west1-c"
}

variable "instance_name" {
 type = string
 default = "default-instance"
}

variable "cluster_name" {
 type = string
 default = "elasticsearch-cluster"
}

variable "cluster_ipv4_cidr" {
 type = string 
}

variable "node_count" {
 type = integer 
}

variable "heap_size" {
 type = string
 default = "1500m"
}

variable "data_disk_size" {
 type = integre
 default = "10"
}
