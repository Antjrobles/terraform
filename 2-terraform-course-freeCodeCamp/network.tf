

#VPC BLOCK
resource "aws_vpc" "vpc_test" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "vpc_test"
  }
}

#SUBNET BLOCK
resource "aws_subnet" "subnet_test" {
  vpc_id                  = aws_vpc.vpc_test.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "eu-west-3a"

  tags = {
    "name" = "test_subnet-public"
  }
}

#INTERNET GATEWAY BLOCK
resource "aws_internet_gateway" "igw_test" {
  vpc_id = aws_vpc.vpc_test.id

  tags = {
    Name = "igw_test"
  }
}
