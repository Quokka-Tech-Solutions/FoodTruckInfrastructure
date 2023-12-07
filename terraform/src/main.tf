# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  shared_credentials_files = ["C:/Users/hp/.aws/config"]
}

# Create a VPC
resource "aws_vpc" "my-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "Demo VPC"
  }
}