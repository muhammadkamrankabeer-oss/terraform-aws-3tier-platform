variable "public_subnet_id" {
  description = "Public subnet ID for frontend instance"
  type        = string
}

variable "private_subnet_id" {
  description = "Private subnet ID for backend instance"
  type        = string
}

variable "web_sg_id" {
  description = "Security group ID for frontend web server"
  type        = string
}

variable "app_sg_id" {
  description = "Security group ID for backend application server"
  type        = string
}
