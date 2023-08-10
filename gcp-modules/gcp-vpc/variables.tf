variable "project" {
    type = string
    default = "project-vpc-356811"
}

variable "region" {
    type =string
    #default = "us-central1"
}

# variable "subnet_cidr" {
#   type = list
#   #default =["10.0.0.0/24", "10.0.0.0/24"]
# }

# variable "subnet_region" {
#   type =string
#   default = "asia-east1"
# }

# variable "subnet_names_set" {
#   type = list(string)
#   #default = ["public", "private"]
# }

variable "name" {
  type = string
  #default = "network"
}

# variable "nat_ip_allocate_option" {
#   type = string
#   default = "AUTO_ONLY"
# }

# variable "source_subnetwork_ip_ranges_to_nat" {
#   type = string
#   default = "LIST_OF_SUBNETWORKS"
# }



# variable "tags" {
#   type        = map(string)
#   default     = {
#     Name      = "main"
#   }
# }



# variable "Name" {
#     type=string
#     default = "main"

# }

# variable "routing_mode" {
#     type=string
#     default= "REGIONAL"
# }



# variable "subnets" {
#       type        = map(string)
#     default     = {(
#     subnets = {

     
           
#             subnet_name           =  "public" 
#             subnet_ip             =   "10.0.0.0/24"
#             subnet_region         =   "us-west2"
#             subnet_private_access =   "false"
#             subnet_flow_logs      =   "false"
#           },
          
#           {           
#             subnet_name           = "private"
#             subnet_ip             =  "10.0.1.0/24"
#             subnet_region         =  "us-west2"
#             subnet_private_access =   "true"
#             subnet_flow_logs      =   "false"
#           }
         
    
#      )
#     }
    
   
#     #}
# }