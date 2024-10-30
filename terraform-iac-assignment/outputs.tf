# Output definitions to display important information after resource creation

output "instance_id" {
  description = "The ID of the EC2 instance"  # Output the ID of the created EC2 instance
  value       = module.ec2_instance.instance_id  # Get the ID from the EC2 module output
}

output "instance_public_ip" {
  description = "The public IP of the EC2 instance"  # Output the public IP of the created EC2 instance
  value       = module.ec2_instance.instance_public_ip  # Get the public IP from the EC2 module output
}
