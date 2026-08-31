variable "ebs_size" {
  description = "Size of EBS volume"
  type        = number
  default     = 8
}

variable "ebs_type" {
  description = "EBS volume type"
  type        = string
  default     = "gp3"
}

variable "ebs_device_name" {
  description = "Device name for EBS"
  type        = string
  default     = "/dev/sdf"
}

variable "availability_zone" {
  description = "Availability Zone"
  type        = string
}

variable "instance_id" {
  description = "EC2 instance ID"
  type        = string
}
