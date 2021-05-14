variable "region" {
  
}
variable "instancetype" {

}
variable "imageid" {
  type = string

validation {
     condition = length(var.imageid)>4 && substr(var.imageid,0,4)=="ami-"
     error_message = "The image id must be a valid ami id?"
}
}
variable "AllUserList" {
  type = list
  
}
variable "env" {
  type = string
  
}
variable "allports" {
type = list(number)
  
}