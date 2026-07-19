variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "ap-southeast-1"
}

variable "project_name" {
  description = "Project prefix for all resources"
  type        = string
  default     = "tf-cicd"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "Public subnet CIDR"
  type        = string
  default     = "10.0.1.0/24"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "ami_id" {
  description = "Ubuntu 24.04 LTS AMI for ap-southeast-1"
  type        = string
  default     = "ami-0497a974f8d5dcef8"
}

variable "alert_email" {
  description = "Email address for CloudWatch alarm notifications"
  type        = string
}

# New SSH Addition
variable "ssh_public_key" {
  description = "Public SSH key for EC2 access"
  type        = string
}
