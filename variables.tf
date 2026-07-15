variable "aws_region" {
  description = "AWS Region"
  type = string
  default = "ap-southeast-1"
}

variable "project_name" {
  description = "Project prefix for all resources"
  type = string
  default = "tf-cicd"
}
