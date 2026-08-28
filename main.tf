terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "myec2" {
  ami           = "ami-0b6d9d3d33ba97d99"
  instance_type = "t3.micro"

   vpc_security_group_ids = ["sg-071109b29cc1ce5d3"]

  key_name = "Practise"

  tags = {
    Name = "My-EC2"
  }
}

# Additional 8 GB EBS Volume
resource "aws_ebs_volume" "myebs" {
  availability_zone = aws_instance.myec2.availability_zone
  size              = 8
  type              = "gp3"

  tags = {
    Name = "My-EBS"
  }
}

# Attach EBS to EC2
resource "aws_volume_attachment" "ebs_attachment" {
  device_name = "/dev/sdf"

  volume_id  = aws_ebs_volume.myebs.id
  instance_id = aws_instance.myec2.id
}
