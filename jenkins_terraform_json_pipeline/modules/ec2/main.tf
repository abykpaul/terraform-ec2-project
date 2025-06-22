resource "null_resource" "ec2_placeholder" {
  provisioner "local-exec" {
    command = "echo EC2 module applied"
  }
}
output "ec2_status" {
  value = "EC2 module applied"
}
