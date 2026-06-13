
module "vpc" {
  source = "./modules/vpc"

  vpc_cidr              = var.vpc_cidr
  public_subnet_a_cidr  = var.public_subnet_cidr
  private_subnet_a_cidr = var.private_subnet_cidr

  availability_zone_a = var.availability_zone
}

module "security_groups" {
  source = "./modules/security-groups"

  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source = "./modules/ec2"

  public_subnet_id  = module.vpc.public_subnet_id
  private_subnet_id = module.vpc.private_subnet_id

  web_sg_id = module.security_groups.web_sg_id
  app_sg_id = module.security_groups.app_sg_id
}
