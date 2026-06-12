output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

output "public_subnet_id" {
  description = "Public Subnet ID"
  value       = module.vpc.public_subnet_id
}

output "private_subnet_id" {
  description = "Private Subnet ID"
  value       = module.vpc.private_subnet_id
}

output "frontend_public_ip" {
  description = "Frontend Public IP"
  value       = module.ec2.frontend_public_ip
}

output "frontend_private_ip" {
  description = "Frontend Private IP"
  value       = module.ec2.frontend_private_ip
}

output "backend_private_ip" {
  description = "Backend Private IP"
  value       = module.ec2.backend_private_ip
}
