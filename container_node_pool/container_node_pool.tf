resource "google_container_node_pool" "containe_node_pool" {
  name     = var.name
  location = var.location
  cluster  = var.cluster

  autoscaling {
      min_node_count = var.min_node_count
      max_node_count = var.max_node_count
  }

  node_config {
      machine_type = var.machine_type
      preemtible   = var.preemtible
  }

  management {
      auto_repair    = var.auto_repair
      auto_upgrade   = var.auto_upgrade
  }

  oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
  ]
}