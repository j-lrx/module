resource "google_container_cluster" "container_cluster" {
    name                         = var.name
    location                     = var.location
    project                      = var.project
    network                      = var.network
    subnetwork                   = var.subnetwork
    min_master_version           = "latest"
    remove_default_node_pool     = false
    
    
    cluster_autoscaling {
        enabled = var.enable_cluster_autoscaling
        resource_limits {
            resource_type   = "cpu"
            minimum         = var.cpu_min
            maximum         = var.cpu_max
        }
        resource_limits {
            resource_type   = "memory"
            minimum         = var.ram_min
            maximum         = var.ram_max
        }
    }
    
    node_pool {
        name                = var.node_pool_name
        initial_node_count  = var.initial_node_count

        autoscaling {
            min_node_count  = var.min_node_count
            max_node_count  = var.max_node_count
        }

        node_config {
            machine_type    = var.machine_type
            preemptible     = var.preemptible
        }

        management {
            auto_repair     = var.auto_repair
            auto_upgrade    = var.auto_upgrade
        }
    }
    
    addons_config {
        network_policy_config {
            disabled = false
        }

        http_load_balancing {
            disabled = false
        }
    }

    network_policy {
        enabled  = true
        provider = "CALICO"
    }

    ip_allocation_policy {
        cluster_ipv4_cidr_block  = var.cluster_ipv4_cidr
        services_ipv4_cidr_block = var.services_ipv4_cidr
    }
}
