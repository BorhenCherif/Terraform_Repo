

resource "aws_instance" "PROD" {
    ami = "ami-0533f2ba8a1995cf9"
    instance_type =  "t2.micro"
    count = var.env =="PROD" ? 1:0
    tags = {
      "Name" = "PROD_SERVER"
    }  
}

resource "aws_instance" "DEV" {
    ami = "ami-0533f2ba8a1995cf9"
    instance_type =  "t2.micro"
    count = var.env =="DEV" ? 1:0
    tags = {
      "Name" = "DEV_SERVER"
    }  
}