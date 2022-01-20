module "elasticsearch_prod" {
  source = "AckeeCZ/elasticsearch/gcp"

  project                   = var.project
  region                    = var.region
  zone                      = var.zone
  instance_name             = var.instance_name
  cluster_name              = var.cluster_name
  cluster_ipv4_cidr         = var.cluster_ipv4_cidr
  node_count                = var.node_count
  heap_size                 = var.heap_size
  raw_image_source          = "https://storage.googleapis.com/ackee-images/ackee-elasticsearch-7-disk-79.tar.gz"
  data_disk_size            = var.data_disk_size
  custom_pre_start_commands = "/usr/share/elasticsearch/bin/elasticsearch-plugin install -b analysis-stempel"
}
