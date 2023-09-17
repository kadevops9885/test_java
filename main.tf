# Configure the AWS provider
provider "aws" {
  region = "us-east-1" # Change to your desired AWS region
}

# Define an AWS EC2 instance resource
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2 AMI ID (us-east-1)
  instance_type = "t2.micro"              # Change to your desired instance type

  tags = {
    Name = "ExampleInstance"
  }
}
