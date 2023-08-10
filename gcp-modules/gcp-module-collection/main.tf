provider "google" {
  
  credentials = "${file("service-account.json")}"
  project     =var.project   
  region      = var.region
  zone    = var.gcp_zone      
}

provider "google-beta"{
  region = var.region
  zone   = var.zone
  credentials = "${file("service-account.json")}"
}


module "gcp-services" {
   source  = "/opt/terraform-poc/terraform-resources/gcp/gcp-module-collection"
   name = var.name
   project=var.project
   subnet_name = var.subnet_name
   ip_cidr_range = var.ip_cidr_range
   region = var.region
   mtu                             = var.mtu
   enable_ula_internal_ipv6        = var.enable_ula_internal_ipv6
   internal_ipv6_range             = var.internal_ipv6_range
   routing_mode                    = var.routing_mode
   
    gce_ssh_user = var.gce_ssh_user
    gce_ssh_pub_key_file = var.gce_ssh_pub_key_file
    #subnet_ids = ["${google_compute_subnetwork.subnets[0].id}", "${google_compute_subnetwork.subnets[1].id}"]
    protocol = var.protocol
    source_ranges = var.source_ranges
    ports =var.ports
    firewall_name =var.firewall_name
    target_tags = var.target_tags
    machine_type = var.machine_type
    #compute_address_name = var.compute_address_name
    instance_name = var.instance_name
    #instance_subnetwork = "${google_compute_subnetwork.subnets[0].self_link}"
    bucket_name_set =var.bucket_name_set
    location = var.location
    storage_class = var.storage_class
    public_access_prevention =var.public_access_prevention
    uniform_bucket_level_access = var.uniform_bucket_level_access #true
    versioning_enabled =var.versioning_enabled
    force_destroy = var.force_destroy

    db_instance_name                 = var.db_instance_name
  random_instance_name = var.random_instance_name
                                  

  deletion_protection = var.deletion_protection  

  database_version = var.database_version 
  #region           = var.region 
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

  additional_users = [
    {
      name     = "app"
      password = "PaSsWoRd"
      host     = "localhost"
      type     = "BUILT_IN"
    },
    {
      name     = "readonly"
      password = "PaSsWoRd"
      host     = "localhost"
      type     = "BUILT_IN"
    },
  ]
}
