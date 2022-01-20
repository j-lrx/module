output "self_link" {
  value = "${google_compute_global_address.private_ip_address.self_link}"
}

output "id" {
  value = "${google_compute_global_address.private_ip_address.id}"
}
