resource "aws_instance" "ec2demo"{

    ami = data.aws_ami.amznlinux2.id
    instance_type = var.instance_type
    user_data = file("${path.module}/app1-install.sh")
    vpc_security_group_ids = [aws_security_group.vpc-ssh1.id,aws_security_group.vpc-web1.id]
    #it will create ec2 instance in all the avaiability zones of a vpc
    tags = {
    Name = "gopal-instance"
  }
}