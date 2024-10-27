# Terraform variable values for the test environment

instance_type = "t2.micro"                               # Instance type to create
ami_id        = "ami-06b21ccaeff8cd686"                  # AMI ID to use for the instance
tags          = {                                        # Tags to assign to resources
  Name = "TestInstance"                                 # Name tag for the instance
}
