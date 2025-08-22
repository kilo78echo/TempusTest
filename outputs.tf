
output "network_vpc_id" {
  description = "The ID of the VPC created by the network module"
  value       = module.network.vpc_id
}

output "network_public_subnet_id" {
  description = "The ID of the public subnet created by the network module"
  value       = module.network.public_subnet_id
}

output "storage_bucket_id" {
  description = "The ID of the S3 bucket created by the storage module"
  value       = module.storage.bucket_id
}

output "storage_bucket_arn" {
  description = "The ARN of the S3 bucket created by the storage module"
  value       = module.storage.bucket_arn
}

output "region" {
  description = "The AWS region in use"
  value       = var.aws_region
}
