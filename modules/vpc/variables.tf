variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}

variable "public_subnet_a_cidr" {
  description = "CIDR for public subnet A"
  type        = string
}

variable "private_subnet_a_cidr" {
  description = "CIDR for private subnet A"
  type        = string
}

variable "availability_zone_a" {
  description = "Availability Zone A"
  type        = string
}
