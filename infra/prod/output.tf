output "subnet_id" {
  value = aws_subnet.My_Sub.id
}
output "vpc_id" {
  value = aws_vpc.main.id
}
output "sg_id" {
  value = aws_security_group.SG.id
}
output "instance_name" {
  value = var.instance_name
}