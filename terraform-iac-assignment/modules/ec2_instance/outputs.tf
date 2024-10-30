# Output the ID of the EC2 instance
output "instance_id" {
  value = aws_instance.habtamu-instance.id  # Retrieve the instance ID
}

# Output the public IP of the EC2 instance
output "instance_public_ip" {
  value = aws_instance.habtamu-instance.public_ip  # Retrieve the public IP
}
