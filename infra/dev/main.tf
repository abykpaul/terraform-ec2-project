provider "aws" {
  region = var.region
}

resource "aws_instance" "example" {
  ami           = "ami-0f535a71b34f2d44a" # Amazon Linux 2 AMI
  instance_type = var.instance_type

  tags = {
    Name = "Terraform-EC2-Example"
  }
}