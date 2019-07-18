resource "google_container_cluster" "container_cluster" {
    name                        = var.name
    location                    = var.location
    project                     = var.project
    network                     = var.network
    subnetwork                  = var.subnetwork

    addons_config {
        network_policy {
            enabled                 = true
            provider                = "CALICO"
        }
    }

    node_pool {
        name               = "pool"
        initial_node_count = "${var.initial_node_count}"

        management {
            auto_repair  = var.auto_repair
            auto_upgrade = var.auto_upgrade
        }      

        autoscaling {
            min_node_count = var.min_node_count
            max_node_count = var.max_node_count
        }

        node_config {
            preemptible  = var.preemptible
            machine_type = var.machine_type
        }

        oauth_scopes = [
        "https://www.googleapis.com/auth/devstorage.read_only",
        "https://www.googleapis.com/auth/logging.write",
        "https://www.googleapis.com/auth/monitoring",
        "https://www.googleapis.com/auth/service.management.readonly",
        "https://www.googleapis.com/auth/servicecontrol",
        "https://www.googleapis.com/auth/trace.append",
        "https://www.googleapis.com/auth/compute",
      ]
    }
}