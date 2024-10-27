# Variable values for the development environment

instance_type = "t2.micro"  # EC2 instance type for dev
ami_id        = "ami-06b21ccaeff8cd686"  # AMI ID for the EC2 instance
tags = {
  Name        = "habtamu-dev-instance"  # Name tag for the EC2 instance
  Environment = "development"  # Environment tag
}
