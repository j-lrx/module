resource "google_sql_database_instance" "sql_db" {
  provider = google-beta
  name             = var.name
  project          = var.project
  database_version = var.database_version
  region           = var.region
  root_password    = var.root_pwd
  
  depends_on       = var.private_vpc_connection

  settings {
    tier              = var.tier
    availability_type = var.availability_type
    
    ip_configuration {
      ipv4_enabled    = false
      private_network = var.network
    }
  }
}
