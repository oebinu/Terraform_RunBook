
################## INIT ####################

variable "region" {
  default = ""
}

############### SHARED #####################

variable "cluster_name" {
  default = ""
}

################ PUBLIC_SUB #################

variable "vpc_cidr" {
  default = ""
}

variable "public_subnet" {
  default	    = {}  
}

################ PRIVATE_SUB #################

variable "private_subnet" {
  default	    = {}  
}

################ NodeGroup_LIST #################

variable "node_list" {
  type = list(object({
    name            = string
    instance_type   = string
    instance_volume = string
    desired_size    = number
    min_size        = number
    max_size        = number
    description     = string
  }))

  default     = []
  description = "definition to create node groups"
}