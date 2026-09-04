variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "EC2 Key Pair name"
  type        = string
}

variable "security_group_id" {
  description = "Security Group ID"
  type        = string
}

variable "availability_zone" {
  description = "Availability Zone for EC2"
  type        = string
}

variable "instance_name" {
  description = "Name tag for EC2"
  type        = string
  
}
variable "environment" {
  description = "Environment for the resources"
  type        = string
  
}
