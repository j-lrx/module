resource "google_container_node_pool" "containe_node_pool" {
  name     = var.name
  location = var.location
  cluster  = var.cluster

  autoscaling {
      min_node_count = var.min_node_count
      max_node_count = var.max_node_count
  }

  management {
      auto_repair    = var.auto_repair
      auto_upgrade   = var.auto_upgrade
  }
}