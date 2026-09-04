variable "ami_id" {
  type = string
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "key_name" {
  type = string
}

variable "security_group_id" {
  type = string
}

variable "availability_zone" {
  type = string
}

variable "ebs_size" {
  type    = number
  default = 8
}

variable "ebs_type" {
  type    = string
  default = "gp3"
}

variable "environment" {
  type = string
}
