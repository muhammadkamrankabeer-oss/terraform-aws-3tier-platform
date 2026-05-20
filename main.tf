module "vpc" {
  source = "./modules/vpc"

  vpc_cidr              = "10.0.0.0/16"
  public_subnet_a_cidr  = "10.0.1.0/24"
  private_subnet_a_cidr = "10.0.11.0/24"

  availability_zone_a = "ap-south-1a"
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
