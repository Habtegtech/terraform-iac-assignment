# Outputs for the EC2 instance module

output "instance_id" {
  value = aws_instance.this.id  # Output the ID of the EC2 instance
}

output "instance_public_ip" {
  value = aws_instance.this.public_ip  # Output the public IP of the EC2 instance
}
