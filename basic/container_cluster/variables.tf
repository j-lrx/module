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

variable "min_master_version" {
  type    = string
  default = "lastest"
}

variable "enable_cluster_autoscaling" {
  type    = bool
  default = true
}

variable "cpu_min" {
  type    = number
  default = 1
} 

variable "cpu_max" {
  type    = number
  default = 32
}

variable "ram_min" {
  type    = number
  default = 2
} 

variable "ram_max" {
  type    = number
  default = 32
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

variable "node_pool_name" {
  type    = string
  default = "default-node-pool"
}

variable "initial_node_count" {
  type    = number
  default = 1
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
