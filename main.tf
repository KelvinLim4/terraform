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