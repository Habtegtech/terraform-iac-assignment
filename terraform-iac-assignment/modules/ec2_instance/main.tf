# Main configuration for the EC2 instance module

resource "aws_instance" "this" {
  ami           = "ami-06b21ccaeff8cd686"        # AMI ID for the EC2 instance
  instance_type = var.instance_type     # EC2 instance type
#   tags          = {var.tags}               # Tags for the instance

  # Add additional settings as needed, e.g., security groups, key pairs
}

# Output the instance ID and public IP
#output "instance_id" {
#  value = aws_instance.this.id  # Output the ID of the EC2 instance
#}

#output "instance_public_ip" {
#  value = aws_instance.this.public_ip  # Output the public IP of the EC2 instance
#}
