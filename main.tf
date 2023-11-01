provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "Vijay-test-01"

  instance_type          = "t2.micro"
  key_name               = "user1"
  monitoring             = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}