provider "google" {
    credentials = "${file("service-account.json")}"
    project = var.project
    region  = var.region
}

module "gcr" {
    source = "/opt/terraform-poc/terraform-resources/gcp/gcr"
    #bucket = var.bucket
    role   = var.role   
    member = var.member 
    project = var.project
    location = var.location 
}