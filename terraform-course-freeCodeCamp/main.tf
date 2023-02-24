terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "antjrobles-organization"

    workspaces {
      name = "terraform-course-freecodecamp"
    }
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"   
    }
  }
}

# PROVIDER BLOCK
provider "aws" {
  profile = "terraform"     // profile = "terraform" in ~/.aws/credentials
  region  = "eu-west-3"   // eu-west-3 = Paris
}


# RESOURCES
resource "aws_instance" "test_server" {
  ami           = "ami-0ca5ef73451e16dc1"   // Ubuntu 20.04 LTS
  instance_type = "t2.nano"   // t2.nano = 1 vCPU, 0.5 GiB RAM
  tags = {
    Name = "test_server"
  }
}

# LOCALS BLOCK
locals {
  project_name = "Antonio Robles"
}

/* # MODULE BLOCK
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["eu-west-1a", "eu-west-1b", "eu-west-1c", "eu-west-3"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
} */
