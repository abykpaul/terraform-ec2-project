variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
}

variable "key_name" {
  description = "Key pair name"
  type        = string
  default     = "My-Devops-Key"
}

variable "owner" {
  description = "Owner name tag"
  type        = string
  default     = jack
}
