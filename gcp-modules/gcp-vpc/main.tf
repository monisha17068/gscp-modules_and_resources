provider "google" {
  
  credentials = "${file("service-account.json")}"
  project     = var.project             
  region      = var.region 
}

  module "google_compute_network" {
    source  = "/opt/terraform-poc/terraform-resources/gcp/vpc"              
    name = var.name 
  }  