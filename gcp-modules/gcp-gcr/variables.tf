variable "project" {
    type = string

}

# variable "bucket" {
#     type = string
# }

variable "role" {
    type = string
    default = "roles/storage.objectViewer"

}

variable "location" {
    type = string
    #default = "EU"
    
  
}


variable "region" {
    type = string
    
  
}

# variable "name" {
#     default = "test-repo"
  
# }

variable "member" {
    type = string
    default = "user:srishti.indium@gmail.com"

}