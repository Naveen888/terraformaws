variable "aws_region" {
    description = "Region in which aws resrouce is going to be created"
    type = string
    default = "ap-northeast-2"
}

#aws ec2 instance type
variable "instance_type" {
    description = "ec2 instance type"
    type = string
    default = "t2.micro"
  
}

#var instance keypair. 
variable "instance_keypair" {
  description = "ec2 instance key"
  type = string
  default = "terraform"
}
