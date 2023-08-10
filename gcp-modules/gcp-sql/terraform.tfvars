project_id          =   "hallowed-oven-369407"
name = "gcp-cloud-db"                                 
database_version    = "MYSQL_5_6"
region              = "us-west1"
zone                = "us-west1-a"
tier                = "db-n1-standard-1"
deletion_protection = false
random_instance_name = false
disk_size    = 10
disk_type    = "PD_SSD"
availability_type ="REGIONAL"
ipv4_enabled        = true
database_flags = {
    character_set_server = "utf8mb4"
    slow_query_log = "on"
}
maintenance_window_day = 1
  user_labels = {
    environment = "development"
  }

