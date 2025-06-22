variable "region" {
  type    = string
  default = "us-east-1"
}

variable "ami_id" {
  type    = string
  default = "ami-0c55b159cbfafe1f0" // Amazon Linux 2 in us-east-1
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}
variable "vpc_cidr" {
  type = string
}
variable "subnet_cidr" {
  type = string
}
#variable "subnet_id" {
#  type = string
#}
#variable "sg_id" {
#  type = string
#}
