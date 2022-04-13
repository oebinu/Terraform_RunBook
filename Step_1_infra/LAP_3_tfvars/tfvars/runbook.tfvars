
############### INFO ###################

region       = "ap-northeast-2"


############### SHARED #################

cluster_name = "runbook_tfvars"


############### PUBLIC_SUB ##############

vpc_cidr     = "10.0.0.0/16"

public_subnet = {
  name          = "tfvars_Public"
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


############### PRIVATE_SUB ##############

private_subnet = {
  name          = "tfvars_private"
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