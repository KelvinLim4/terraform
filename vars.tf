variable "amis" {
  type          = map
  default = {
    "us-east-1" = "ami-05fa00d4c63e32376"
    "us-east-2" = "ami-08333bccc35d71140"
  }

  description = "AMIs Variables"
}
