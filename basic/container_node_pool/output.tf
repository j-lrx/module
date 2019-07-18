output "name" {
  value = "${google_container_node_pool.container_node_pool.name}"
}

output "self_link" {
  value = "${google_container_node_pool.container_node_pool.self_link}"
}
