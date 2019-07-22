output "self_link" {
  value = "${google_compute_network.vpc.self_link}"
}

output "gateway_ipv4" {
  value = "${google_compute_network.vpc.gateway_ipv4}"
}
