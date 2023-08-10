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
    default = true
}

variable "network_name" {
    type = string
    #default = "vpc-network"
}

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
    default = ["0.0.0.0/0" ]
}

variable "deletion_protection" {
    type=bool
    default=false
}