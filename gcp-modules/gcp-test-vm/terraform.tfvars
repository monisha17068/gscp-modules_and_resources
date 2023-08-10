#  #project = "hallowed-oven-369407"
#  #region = "us-central1"
 name = "cloud-network"
subnet_name = [ "public", "private"]
ip_cidr_range = [ "10.0.0.0/24" ,"10.0.1.0/24"]


gcp_project = "hallowed-oven-369407"
gcp_region  = "us-central1"
gcp_zone    = "us-central1-a"
instance_name = "gcp-vminstance"
gce_ssh_user ="test"
gce_ssh_pub_key_file = "./my-ssh-key"
deletion_protection=false
enable_display= false
enable_confidential_compute =false
#enable_attached_disk =false
machine_type = "f1-micro"
labels ={
    owner       = "demouser"
    environment = "demo"
    app         = "demo"
    ttl         = "24"
}
enable_attached_disk= false
enable_confidential_vm=false
service_account_email ="test-880@hallowed-oven-369407.iam.gserviceaccount.com" 
   
    

# # gcp_zone    = "us-central1-a"
# # instance_name = "terraform-instance"
# machine_type = "f1-micro"

# # bucket_name_set = [
# #   "captain_america",
# #   "ironman143",
# #   "hulk123",
# # ]

# # db_instance_name = "gcp-cloud-db"                                 
# # database_version    = "MYSQL_5_6"
# # #region              = "us-west1"
# # zone                = "us-central1-a"
# # #tier                = "db-n1-standard-1"
# # deletion_protection = false
# # random_instance_name = false