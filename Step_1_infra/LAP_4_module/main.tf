
########## PROVIDER ###########

provider "aws" {
  region = "ap-northeast-2"
}



module "runbook_infra" {
  source = "./module_infra"

    ############### SHARED #################

    cluster_name = "runbook_module"


    ############### PUBLIC_SUB ##############

    vpc_cidr     = "10.0.0.0/16"

    public_subnet = {
    name          = "module_Public"
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
    name          = "module_private"
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