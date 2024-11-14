#Syntax


variable "name" {
  default= "default value"
    
} 
 #if we don't give 'type' then its alwasy string.



#if u want use this variable in our resources(terraform code) then we have to use interpolation for our attribites.
#syntax = var.variablename

################
#input variales#
################

provider "aws" {
region = "ap-south-1"
}


resource "aws_instance" "MyEc2" {

ami = var.amivar
instance_type = var.instype
}

variable "amivar" {
default = "ami-08bf489a05e916bbd"
}


variable "instype" {
 default = "t2.small"
}






