project = "hallowed-oven-369407"
region = "us-central1"
name = "gcp-cloud-network"
subnet_name = [ "public-subnet", "private-subnet"]
ip_cidr_range = [ "10.0.0.0/24" ,"10.0.1.0/24"]
routing_mode ="REGIONAL"
enable_ula_internal_ipv6        = false
internal_ipv6_range             = null
mtu=1460


#gce_ssh_user ="test"
#gce_ssh_pub_key_file = "../res/my-ssh-key"

gcp_zone    = "us-central1-a"
instance_name = "terraform-instance"
machine_type = "f1-micro"
gce_ssh_user ="test"
gce_ssh_pub_key_file = "./my-ssh-key"

enable_display= false
enable_confidential_compute =false
#enable_attached_disk =false
labels ={
    owner       = "demouser"
    environment = "demo"
    app         = "demo"
    ttl         = "24"
}
enable_attached_disk= false
enable_confidential_vm=false
service_account_email ="test-880@hallowed-oven-369407.iam.gserviceaccount.com" 
   

bucket_name_set = [
  "captain_america",
  "ironman143",
  "hulk123",
]
storage_class =  "STANDARD"
public_access_prevention = "enforced"
uniform_bucket_level_access = true
versioning_enabled =true
force_destroy = false



db_instance_name = "test-db"                                 
database_version    = "MYSQL_5_6"
#region              = "us-west1"
zone                = "us-central1-a"
#tier                = "db-n1-standard-1"

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

