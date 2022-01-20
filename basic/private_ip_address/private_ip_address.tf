resource "google_compute_network" "peering_network" {
  name = "peering-network"
}

resource "google_compute_global_address" "private_ip_address" {

  name          = var.name
  project       = var.project
  purpose       = var.purpose
  address_type  = var.address_type
  prefix_length = 16
  network       = google_compute_network.peering_network.id
  ip_version    = var.ip_version
}
