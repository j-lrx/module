resource "google_container_node_pool" "container_node_pool" {
  name     = var.name
  location = var.location
  cluster  = var.cluster
  project  = var.project

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
}