resource "google_compute_subnetwork" "subnet"{
    name             = "${var.name}"
    project          = "${var.project}"
    network          = "${var.network}"
    region           = "${var.region}"
    ip_cidr_range    = "${var.cidr_range}"
}
