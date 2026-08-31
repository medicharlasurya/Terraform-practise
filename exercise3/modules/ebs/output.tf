output "ebs_volume_id" {
  description = "ID of the EBS volume"
  value       = aws_ebs_volume.myebs.id
}

output "ebs_volume_size" {
  description = "Size of the EBS volume"
  value       = aws_ebs_volume.myebs.size
}

output "ebs_volume_type" {
  description = "Type of the EBS volume"
  value       = aws_ebs_volume.myebs.type
}

output "ebs_availability_zone" {
  description = "Availability Zone of the EBS volume"
  value       = aws_ebs_volume.myebs.availability_zone
}
