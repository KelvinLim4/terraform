provider "aws" {
    region = "us-east-1"

}

resource  "aws_instance" "dev" {
    count = 3
    ami = "ami-05fa00d4c63e32376"
    instance_type = "t2.micro"
    key_name = "terraform-aws"
    tags = {
        Name = "dev${count.index}"
    }
}

resource "aws_security_group" "acesso-ssh"{
    name = "acesso-ssh"
    description = "acesso-ssh"

    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["179.125.129.14/32"]
    } 

    tags = {
        Name = "ssh"
    }

}