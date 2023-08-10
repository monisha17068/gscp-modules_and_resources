# gce_ssh_user ="test"
# gce_ssh_pub_key_file = "/opt/terraform-poc/terraform-resources/gcp/virtual_machine/my-ssh-key"
gcp_project = "hallowed-oven-369407"
gcp_region  = "us-central1"
gcp_zone    = "us-central1-a"
name = "terraform-instance"
machine_type = "f1-micro"
labels ={
    owner       = "demouser"
    environment = "demo"
    app         = "demo"
    ttl         = "24"
}
enable_attached_disk= false
network_name="vpc-network"