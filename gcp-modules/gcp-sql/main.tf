resource "random_id" "suffix" {
  byte_length = 5
}


provider "google-beta"{
  region = "us-west1"
  zone   = "us-west1-a"
  credentials = "${file("service-account.json")}"
}

provider "google" {
  project     = "us-west1"
  region      = "us-west1-a"
  credentials = "${file("service-account.json")}"
}


module "mysql-db" {
  source               = "/opt/terraform-poc/terraform-resources/gcp/gcp-sql"
  name                 = var.name
  random_instance_name = var.random_instance_name
  project_id           = var.project_id                                      

  deletion_protection = var.deletion_protection  

  database_version = var.database_version 
  region           = var.region 
  zone             = var.zone 
  tier             = var.tier 
  availability_type = var.availability_type
  disk_size    = var.disk_size
  disk_type    = var.disk_type
  disk_autoresize =var.disk_autoresize
  ip_configuration = var.ip_configuration
  database_flags = var.database_flags
  maintenance_window_day = var.maintenance_window_day
  user_labels = var.user_labels

#   additional_users = [
#     {
#       name     = "app"
#       password = "PaSsWoRd"
#       host     = "localhost"
#       type     = "BUILT_IN"
#     },
#     {
#       name     = "readonly"
#       password = "PaSsWoRd"
#       host     = "localhost"
#       type     = "BUILT_IN"
#     },
#   ]
# }
}