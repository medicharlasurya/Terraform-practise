resource "aws_instance" "myec2" {
  ami           = var.ami_id
  instance_type = var.instance_type

  key_name = var.key_name

  security_groups = [var.security_group_id]

  availability_zone = var.availability_zone

    user_data = file("${path.module}/website.sh")

      user_data_replace_on_change = true


  tags = {
    Name = "${var.instance_name}-${var.environment}"
    Environment = var.environment
  }
}
