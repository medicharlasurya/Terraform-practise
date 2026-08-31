resource "aws_ebs_volume" "myebs" {
  availability_zone = var.availability_zone
  size              = var.ebs_size
  type              = var.ebs_type

  tags = {
    Name = "Terraform-EBS"
  }
}

resource "aws_volume_attachment" "ebs_attach" {
  device_name = var.ebs_device_name
  volume_id   = aws_ebs_volume.myebs.id
  instance_id = var.instance_id
}
