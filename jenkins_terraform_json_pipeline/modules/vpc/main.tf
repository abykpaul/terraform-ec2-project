resource "null_resource" "vpc_placeholder" {
  provisioner "local-exec" {
    command = "echo VPC module applied"
  }
}
output "vpc_status" {
  value = "VPC module applied"
}
