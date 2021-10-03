# KMS
output "kms_key_arn" {
  value       = aws_kms_key.key.arn
  description = "The Amazon Resource Name of the KMS key used to encrypt data at rest."
}

output "kms_key_id" {
  value       = aws_kms_key.tfe_key.key_id
  description = "The identity of the KMS key used to encrypt data at rest."
}

# Network
output "network_id" {
  value       = local.network_id
  description = "The identity of the VPC in which resources are deployed."
  sensitive   = true
}

output "private_subnet_ids" {
  value       = local.network_private_subnets
  description = "The identities of the private subnetworks deployed within the VPC."

}

output "public_subnet_ids" {
  value       = local.network_public_subnets
  description = "The identities of the public subnetworks deployed within the VPC."
}

output "network_private_subnet_cidrs" {
  value       = local.network_private_subnet_cidrs
  description = "The CIDR blocks of the private subnetworks deployed within the VPC."
}

output "website" {
  value       = "https://${fqdn}"
  description = "The URL to the W&B application"
}
