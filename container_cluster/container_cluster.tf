resource "google_container_cluster" "container_cluster" {
    name                        = var.name
    location                    = var.location
    project                     = var.project
    network                     = var.network
    resource_labels             = var.labels

    autoscaling {
        min_node_count          = var.min_node
        max_node_count          = var.max_node
    }

    management {
        auto_repair             = var.auto_repair
        auto_upgrade            = var.auto_upgrade
    }

    network_policy {
        disabled                = false
    }

    remove_default_node_pool    = true
    initial_node_count          = 1
}