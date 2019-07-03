resource "google_compute_network" "vpc"{
    Name                     = "${var.vpc_name}"
    project                  = "${var.project_id}"
    auto_create_subnectworks = false
}