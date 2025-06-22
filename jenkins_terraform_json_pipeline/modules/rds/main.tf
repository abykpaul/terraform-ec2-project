resource "null_resource" "rds_placeholder" {
  provisioner "local-exec" {
    command = "echo RDS module applied"
  }
}
output "rds_status" {
  value = "RDS module applied"
}
