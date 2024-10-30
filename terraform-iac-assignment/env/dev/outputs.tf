# Output definitions for the dev environment

output "instance_id" {
  value = module.root.instance_id  # Output the EC2 instance ID from the root module
}

output "instance_public_ip" {
  value = module.root.instance_public_ip  # Output the EC2 instance public IP from the root module
}
