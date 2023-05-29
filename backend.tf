#Criar primeiro o bucket S3 
terraform {
  backend "s3" {
    bucket         = "rmerceslabs-dev4-kelvinho"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    
  }
}
