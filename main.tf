provider "aws" {
    region = "us-east-1"

}

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/24"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.0.0/27"

  tags = {
    Name = "Main"
  }
} 

resource  "aws_instance" "dev" {
    count           = 3
    ami             = "ami-05fa00d4c63e32376"
    instance_type   = "t2.micro"
    key_name        = "terraform-aws"
    subnet_id       =  aws_subnet.main.id
    tags = {
        Name = "dev${count.index}"
    }
    vpc_security_group_ids = [aws_security_group.acesso-ssh.id]
}

resource "aws_security_group" "acesso-ssh"{
    name = "acesso-ssh"
    description = "acesso-ssh"
    vpc_id = aws_vpc.main.id

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