# Example variable
variable "example_var" {
  description = "An example variable"
  type        = string
  default     = "test"
}

variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-west-2"
}

variable "aws_profile" {
  description = "AWS CLI profile to use"
  type        = string
  default     = "default"
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "az" {
  description = "Availability zone for the subnet"
  type        = string
  default     = "us-west-2a"
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "main-storage-bucket"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}
