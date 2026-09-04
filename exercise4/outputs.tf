output "tera1_instance_id" {
  value = module.ec2_tera1.instance_id
}

output "tera2_instance_id" {
  value = module.ec2_tera2.instance_id
}

output "ebs1_volume_id" {
  value = module.ebs1.ebs_volume_id
}

output "ebs2_volume_id" {
  value = module.ebs2.ebs_volume_id
}
