output "self_link" {
  value = "${google_compute_subnetwork.subnet.self_link}"
}

output "gateway_address" {
  value = "${google_compute_subnetwork.subnet.gateway_address}"
}

