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


resource "aws_vpc" "us-east-2" {
  provider         = aws.us-east-2
  cidr_block       = "10.0.0.0/24"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "us-east-2" {
  provider   = aws.us-east-2
  vpc_id     = aws_vpc.us-east-2.id
  cidr_block = "10.0.0.0/27"

  tags = {
    Name = "Main"
  }
} 