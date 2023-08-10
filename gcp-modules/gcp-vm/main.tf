provider "google" {
  credentials = "${file("service-account.json")}"
  project = var.gcp_project
  region  = var.gcp_region
  zone    = var.gcp_zone
}

module "vm" {
    source =  "/opt/terraform-poc/terraform-resources/gcp/gcp-test-vm"
    gce_ssh_user = var.gce_ssh_user
    gce_ssh_pub_key_file = var.gce_ssh_pub_key_file
    gcp_project = var.gcp_project  
    gcp_region = var.gcp_region
    gcp_zone = var.gcp_zone
    network_name = var.network_name
    protocol = var.protocol
    source_ranges = var.source_ranges
    ports =var.ports
    firewall_name =var.firewall_name
    target_tags = var.target_tags
    machine_type = var.machine_type
    auto_create_subnetworks = var.auto_create_subnetworks
    compute_address_name = var.compute_address_name
    name = var.name
    labels = var.labels
    enable_attached_disk = var.enable_attached_disk
    deletion_protection=var.deletion_protection
  
}