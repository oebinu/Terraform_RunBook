
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
