resource "google_compute_subnetwork" "subnet"{
    name             = "${var.name}"
    project          = "${var.project_id}"
    ip_cidr_range    = "${var.cidr_range}"
    network          = "${var.network_id}"
    enable_flow_logs = "${var.enable_flow_logs}"
    region           = "${var.region}"
}