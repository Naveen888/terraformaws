#terraform setting bloc
#terraform block
terraform{
    required_providers {
        aws = {
            source = "hashicorp/aws"
        }
    }
}


#provider block

provider "aws" {
    profile = "default"
    region="us-east-1"
}

#Resource Block

