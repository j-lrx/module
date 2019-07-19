resource "google_container_cluster" "container_cluster" {
    name                        = var.name
    location                    = var.location
    project                     = var.project
    network                     = var.network
    subnetwork                  = var.subnetwork
    min_master_version          = "latest"
    cluster_ipv4_cidr           = var.cluster_ipv4_cidr

    remove_default_node_pool    = true
    initial_node_count          = 1

    addons_config {
        network_policy_config {
            disabled = false
        }

        http_load_balancing {
            disabled = false
        }

        kubernetes_dashboard {
            disabled = false
        }
    }

    network_policy {
        enabled                 = true
        provider                = "CALICO"
    }

    node_pool {
        name                    = "pool"
        initial_node_count      = "${var.initial_node_count}"

        management {
            auto_repair         = var.auto_repair
            auto_upgrade        = var.auto_upgrade
        }      

        autoscaling {
            min_node_count      = var.min_node_count
            max_node_count      = var.max_node_count
        }

        node_config {
            preemptible         = var.preemptible
            machine_type        = var.machine_type
        }
    }
}