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

resource  "aws_instance" "dev4" {
    ami             = "ami-05fa00d4c63e32376"
    instance_type   = "t2.micro"
    key_name        = "terraform-aws"
    subnet_id       =  aws_subnet.main.id
    tags = {
        Name = "dev4"
    }
    vpc_security_group_ids = [aws_security_group.acesso-ssh.id]
    depends_on             = [aws_s3_bucket.dev4]
}

resource  "aws_instance" "dev5" {
    ami             = "ami-05fa00d4c63e32376"
    instance_type   = "t2.micro"
    key_name        = "terraform-aws"
    subnet_id       =  aws_subnet.main.id
    tags = {
        Name = "dev5"
    }
    vpc_security_group_ids = [aws_security_group.acesso-ssh.id]
}

resource  "aws_instance" "dev6" {
    provider        =  aws.us-east-2
    ami             = "ami-08333bccc35d71140"
    instance_type   = "t2.micro"
    key_name        = "terraform-aws"
    subnet_id       =  aws_subnet.main.id
    tags = {
        Name = "dev6"
    }
    vpc_security_group_ids = [aws_security_group.acesso-ssh-us-east-2.id]
}