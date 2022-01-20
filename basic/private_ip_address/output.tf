output "self_link" {
  value = "${google_compute_global_address.private_ip_address.self_link}"
}

output "id" {
  value = "${google_compute_global_address.private_ip_address.id}"
}

output "name" {
  value = "${google_compute_global_address.private_ip_address.name}"
}

output "id" {
  value = "${google_compute_network.peering_network.id}"
}
