resource "aws_vpc" "default" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "vpc-fterraform-providers"
  }
}

resource "aws_vpc" "dev" {
  provider   = aws.dev
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "vpc-fterraform-providers"
  }
}

resource "aws_vpc" "homolog" {
  provider   = aws.homolog
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "vpc-fterraform-providers"
  }
}