output "self_link" {
  value = "${google_sql_database_instance.sql_db.self_link}"
}

output "connection_name" {
  value = "${google_sql_database_instance.sql_db.connection_name}"
}

output "private_ip_address" {
  value = "${google_sql_database_instance.sql_db.private_ip_address}"
}
