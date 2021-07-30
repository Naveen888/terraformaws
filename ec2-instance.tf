resource "aws_instance" "ec2demo"{

    ami = "ami-0c2b8ca1dad447f8a"
    instance_type = "t2.micro"
    user_data = file("${path.module}/app1-install.sh")
    tags = {
    Name = "gopal-instance"
  }
}