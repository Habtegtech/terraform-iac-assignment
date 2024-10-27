# Variable values for the production environment

instance_type = "t2.micro"  # EC2 instance type for prod
ami_id        = "ami-06b21ccaeff8cd686"  # AMI ID for the EC2 instance
tags = {
  Name        = "habtamu-prod-instance"  # Name tag for the EC2 instance
  Environment = "production"  # Environment tag
}
