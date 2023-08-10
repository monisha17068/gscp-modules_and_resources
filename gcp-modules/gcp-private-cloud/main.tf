provider "google" {
  
  credentials = "${file("service_account.json")}"
  project     =var.project   
  region      = var.region      
}


module "gcp-vpc" {
   source  = "/opt/terraform-poc/terraform-resources/gcp/gcp-vpc"
   name = var.name
   subnet_name = var.subnet_name
   ip_cidr_range = var.ip_cidr_range
   region = var.region
   mtu                             = var.mtu
   enable_ula_internal_ipv6        = var.enable_ula_internal_ipv6
   internal_ipv6_range             = var.internal_ipv6_range
   routing_mode                    = var.routing_mode
}
  
