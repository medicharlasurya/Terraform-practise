

resource "aws_instance" "ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type

  vpc_security_group_ids = [var.sg_id]
  key_name               = var.key_name

  tags = {
    Name = "My-EC2"
  }
}

# Additional 8 GB EBS Volume
resource "aws_ebs_volume" "myebs" {
  availability_zone = "us-east-1"
  size              = var.ebs_size
  type              = "gp3"

  tags = {
    Name = "My-EBS"
  }
}

# Attach EBS Volume to EC2
resource "aws_volume_attachment" "ebs_attachment" {
  device_name = "/dev/sdf"
 volume_id   = aws_ebs_volume.myebs.id
  instance_id = aws_instance.ec2.id
}
