terraform {

  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

# PROVIDER BLOCK
provider "aws" {
  profile = "terraform"
  region  = "eu-west-3"
}

# RESOURCES
resource "aws_instance" "test_server" {
  ami           = "ami-0ca5ef73451e16dc1"
  instance_type = "t2.nano"
  tags = {
    Name = "test_server"
  }
}

# LOCALS BLOCK
locals {
  project_name = "Antonio Robles"
}

