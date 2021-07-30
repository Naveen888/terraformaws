#terraform setting bloc
terraform{
    required_provider{
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

resource "aws_instance" "ec2demo"{

    ami = "ami-0c2b8ca1dad447f8a"
    instance_type = "t2.micro"
}