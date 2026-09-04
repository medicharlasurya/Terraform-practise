

module "ec2_tera1" {
  source = "./modules/ec2"

  ami_id            = var.ami_id
  instance_type     = var.instance_type
  key_name          = var.key_name
  security_group_id = var.security_group_id
  availability_zone = var.availability_zone
  instance_name     = "tera1"
  environment = var.environment
}

module "ec2_tera2" {
  source = "./modules/ec2"

  ami_id            = var.ami_id
  instance_type     = var.instance_type
  key_name          = var.key_name
  security_group_id = var.security_group_id
  availability_zone = var.availability_zone
  instance_name     = "tera2"
  environment = var.environment
}


module "ebs1" {
  source = "./modules/ebs"

  ebs_size          = var.ebs_size
  ebs_type          = var.ebs_type
  ebs_device_name   = "/dev/sdf"
  availability_zone = var.availability_zone

  instance_id = module.ec2_tera1.instance_id
}


module "ebs2" {
  source = "./modules/ebs"

  ebs_size          = var.ebs_size
  ebs_type          = var.ebs_type
  ebs_device_name   = "/dev/sdg"
  availability_zone = var.availability_zone

  instance_id = module.ec2_tera2.instance_id
}
