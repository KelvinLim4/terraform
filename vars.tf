variable "amis" {
  type          = map
  default = {
    "us-east-1" = "ami-05fa00d4c63e32376"
    "us-east-2" = "ami-08333bccc35d71140"
  }

  description = "AMIs Variables"
}

variable "cidrs_acesso_remoto" {
  type        = list
  default     = ["179.125.129.14/32", "180.125.129.14/32"]
  description = "Libera acesso SSH para os IPs da lista"
}

variable "key_name" {
  type        = string
  default     = "terraform-aws"
  description = "chave de acesso"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "Tipo de instancia"
}
