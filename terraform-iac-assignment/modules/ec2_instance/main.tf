# Main configuration for the EC2 instance

resource "aws_instance" "habtamu-instance" {
  ami           = var.ami_id  # Use the AMI ID variable
  instance_type = var.instance_type  # Use the instance type variable
  tags          = var.tags  # Use the tags variable
}
