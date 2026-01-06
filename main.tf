
module "Remote-Backend" {
  source = "./Remote-Backend"
}

module "vpc" {
  source      = "./VPC"
  vpc_cidr    = "12.0.0.0/16"
  subnet_cidr = "12.0.1.0/24"
}

module "ec2" {
  source            = "./EC2-Instances"
  instance_count    = 2
  instance_type     = "t2.micro"
  subnet_id         = module.vpc.subnet_id
  security_group_id = module.vpc.security_group_id
}


