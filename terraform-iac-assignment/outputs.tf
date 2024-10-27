# Outputs for the Terraform configuration

output "instance_id" {
  description = "The ID of the EC2 instance"  # Output the EC2 instance ID
  value       = module.ec2_instance.instance_id
}

output "instance_public_ip" {
  description = "The public IP of the EC2 instance"  # Output the public IP of the EC2 instance
  value       = module.ec2_instance.instance_public_ip
}
