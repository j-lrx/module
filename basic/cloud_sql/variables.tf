variable "name" {
  type = string
}

variable "version" {
  type = string
  default = "POSTGRES_11"
}

variable "region" {
  type = string
  default = "europe-west1"
}

variable "tier" {
  type = string
  default = "db-f1-micro"
}

variable "private_vpc_connection" {
  type = string
}
