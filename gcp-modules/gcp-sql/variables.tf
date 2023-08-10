variable "name" {
    type=string
}

variable "project_id" {
    type=string
   
} 
variable "deletion_protection" {
    type=string
}

variable "region" {
    type=string
}  

variable "zone" {
    type=string
}    

variable "tier" {
    type=string
    default="db-n1-standard-1"
   
}

variable "database_version" {
    type=string
  
}

variable "random_instance_name" {
    type=string
}

variable "user_labels" {
  type        = map(string)
  default     = {
     environment = "development"
  }
  description = "The key/value labels for the master instances."
}

variable "database_flags" {
  description = "List of Cloud SQL flags that are applied to the database server. See [more details](https://cloud.google.com/sql/docs/mysql/flags)"
  type=map
  # type = list(object({
  #   name  = string
  #   value = string
  # }))
   default = {
    character_set_server = "utf8mb4"
    slow_query_log = "on"
  }
}

# variable "database_flags" {
#   type    = map
#   default = {
#     character_set_server = "utf8mb4"
#     slow_query_log = "on"
#   }
# }
variable "maintenance_window_day" {
  description = "The day of week (1-7) for the master instance maintenance."
  type        = number
  default     = 1
}

variable "disk_size" {
  description = "The disk size for the master instance"
  type        = number
  default     = 10
}

variable "disk_type" {
  description = "The disk type for the master instance."
  type        = string
  default     = "PD_SSD"
}

variable "availability_type" {
  description = "The availability type for the master instance. Can be either `REGIONAL` or `null`."
  type        = string
  default     = "REGIONAL"
}

variable "disk_autoresize" {
  description = "Configuration to increase storage size"
  type        = bool
  default     = true
}

variable "ip_configuration" {
  description = "The ip_configuration settings subblock"
  type = object({
    authorized_networks = list(map(string))
    ipv4_enabled        = bool
    private_network     = string
    require_ssl         = bool
  })
  default = {
    authorized_networks = []
    ipv4_enabled        = true
    private_network     = null
    require_ssl         = null
  }
}
    

   
    
    










