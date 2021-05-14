  provider "aws" {
  region = var.region

}

locals {
  ctags = {
  Name = "Terraform_Server"
  } 
}

resource "aws_instance" "web" {
    ami = var.imageid
    instance_type = var.instancetype
    tags =  local.ctags
}
/*resource "aws_vpc" "first_vpc" {
  cidr_block = "10.0.0.0/16"


  tags = {
    Name = "Prod_VPC"
  }
}

resource "aws_subnet" "first_subnt" {
  vpc_id     = aws_vpc.first_vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "prod_subnet"
  }
}*/
