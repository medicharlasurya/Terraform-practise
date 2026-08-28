variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}


variable "sg_id" {
  description = "Security Group ID for EC2"
  type        = string
}

variable "key_name" {
  description = "EC2 key pair name"
  type        = string
}

variable "ebs_size" {
  description = "Size of additional EBS volume in GB"
  type        = number
  default     = 8
}

variable "ebs_type" {
  description = "EBS volume type"
  type        = string
  default     = "gp3"
}
