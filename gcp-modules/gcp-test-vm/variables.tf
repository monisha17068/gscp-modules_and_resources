variable "gce_ssh_user" {
    type = string
    default="test"
}
variable "gce_ssh_pub_key_file" {
    type = string
    default="./my-ssh-key"
}
variable "gcp_project" {
    type = string
}
variable "gcp_region" {
    type = string
}
variable "gcp_zone" {
    type = string
}

variable "labels" {
  type = map(string)
  default = {
    owner       = "demouser"
    environment = "demo"
    app         = "demo"
    ttl         = "24"
  }
}

variable "enable_attached_disk" {
    type=bool
}

variable "name" {
    type = string
}

variable "compute_address_name" {
    type = string
    default = "ipv4-address"
}

variable "firewall_name" {
    type = string
    default = "default-allow-ssh-terraform"
}

variable "machine_type" {
    type = string
}

variable "auto_create_subnetworks" {
    type = bool   
    default = false
}

# variable "network_name" {
#     type = string
#     #default = "vpc-network"
# }

variable "protocol" {
    type = string
    default = "tcp"
}

variable "ports" {
    type = list
    default = ["22","80"]
}



variable "target_tags" {
    type = list
    default = ["ssh-server"]
}

variable "source_ranges" {
    type = list 
    default = ["0.0.0.0/0"]
}

variable "deletion_protection" {
    type=bool
    #default=false
}

variable "enable_display"{
    type=bool
    #default=true
}

variable "service_account_email" {
    type = string
        default="test-880@hallowed-oven-369407.iam.gserviceaccount.com"
}

# variable "service_account" {
#     type = object({
#         default={
#     email  = "test-880@hallowed-oven-369407.iam.gserviceaccount.com"
#     scopes = "cloud-platform"
#   }
# })
#     default= {
#         email  = "test-880@hallowed-oven-369407.iam.gserviceaccount.com"
#        scopes = ["cloud-platform"]
#   }


variable "enable_confidential_vm" {
  default     = false
  description = "Whether to enable the Confidential VM configuration on the instance. Note that the instance image must support Confidential VMs. See https://cloud.google.com/compute/docs/images"
}

variable "instance_name" {
    type=string
}

variable "ip_cidr_range" {
    type=list(string)
}

variable "subnet_name" {
    type = list(string)
    #default = ["public", "private"]  
}