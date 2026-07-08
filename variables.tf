variable "aws_region" {
  description = "AWS Region"
  type        = string
}

variable "ami_id" {
  description = "Amazon Linux AMI"
  type        = string
}

variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
}

variable "key_name" {
  description = "EC2 Key Pair"
  type        = string
}

variable "bucket_name" {
  description = "S3 Bucket Name"
  type        = string
}

variable "instance_name" {
  description = "EC2 Name"
  type        = string
}

variable "role_name" {
  description = "IAM Role Name"
  type        = string
}

variable "instance_profile_name" {
  description = "IAM Instance Profile"
  type        = string
}
