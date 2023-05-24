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

resource "aws_security_group" "acesso-ssh-us-east-2"{
    provider    = aws.us-east-2
    name        = "acesso-ssh"
    description = "acesso-ssh"
    vpc_id      = aws_vpc.main.id

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