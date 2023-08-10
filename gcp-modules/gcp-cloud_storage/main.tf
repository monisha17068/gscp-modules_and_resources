provider "google" {
    credentials = "${file("service-account.json")}"
    #project_id = var.project_id
    region  = var.region
}

provider "google-beta" {
     credentials = "${file("service-account.json")}"
    #project_id = var.project_id
    region  = var.region
}


module "cloud_storage" {
    source = "/opt/terraform-poc/terraform-resources/gcp/cloud_storage"
    #name          = each.value     # note: each.key and each.value are the same for a set
    bucket_name_set =var.bucket_name_set
    region     = var.region
    storage_class = var.storage_class
    project_id = var.project_id
    public_access_prevention =var.public_access_prevention
    uniform_bucket_level_access = var.uniform_bucket_level_access #true
    versioning_enabled =var.versioning_enabled
    force_destroy = var.force_destroy
}