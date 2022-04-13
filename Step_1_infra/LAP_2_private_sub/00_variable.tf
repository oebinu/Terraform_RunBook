

################## INIT ####################

variable "region" {
  default = "ap-northeast-2"
}


############### SHARED #####################

variable "cluster_name" {
  default = "runbook"
}


################ PUBLIC_SUB #################

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}


variable "public_subnet" {
  default	    = {
  name          = "Public"
    subnet_list   = [
      {
      availability_zone   = "ap-northeast-2a"
      short_az            = "apne-2a"
      subnet_cidr         = "10.0.10.0/24"
      },
      {
      availability_zone   = "ap-northeast-2c"
      short_az            = "apne-2c"
      subnet_cidr         = "10.0.100.0/24"
      }
    ]
  }  
}

################ PRIVATE_SUB #################

variable "private_subnet" {
  default	    = {
  name          = "Private"
    subnet_list   = [
      {
      availability_zone   = "ap-northeast-2a"
      short_az            = "apne-2a"
      subnet_cidr         = "10.0.20.0/24"
      },
      {
      availability_zone   = "ap-northeast-2c"
      short_az            = "apne-2c"
      subnet_cidr         = "10.0.200.0/24"
      }
    ]
  }  
}