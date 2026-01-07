output "vpc_id" {
  value = module.vpc.vpc_id
}

output "ec2_instance_ids" {
  value = module.ec2.instance_ids
}

output "ec2_public_ips" {
  description = "Public IPs of EC2 instances"
  value       = module.ec2.public_ips
}