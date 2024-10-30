# Main Terraform configuration for provisioning resources

# Define a DynamoDB table for state locking to prevent simultaneous modifications
resource "aws_dynamodb_table" "terraform_locks" {
  name         = "terraform-state-locks-${terraform.workspace}"  # Unique name per workspace
  billing_mode = "PAY_PER_REQUEST"  # Use on-demand billing for flexibility
  attribute {
    name = "LockID"  # Attribute used for locking the state
    type = "S"       # Type of the attribute (string)
  }
  hash_key = "LockID"  # Define the hash key for the DynamoDB table
}

# Call the EC2 instance module to create an EC2 instance
module "ec2_instance" {
  source        = "./modules/ec2_instance"  # Path to the EC2 instance module
  ami_id       = var.ami_id                  # AMI ID passed as a variable
  instance_type = var.instance_type          # Instance type passed as a variable
  tags          = {
    Name = "habtamu-instance-${terraform.workspace}"  # Instance name includes the workspace for clarity
  }
}


