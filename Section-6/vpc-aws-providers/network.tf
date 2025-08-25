resource "aws_subnet" "prd" {
  vpc_id     = module.vpc.vpc_id_default
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "subnet-fterraform-default"
  }
}

resource "aws_subnet" "dev" {
  provider = aws.dev

  vpc_id     = module.vpc.vpc_id_dev
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "subnet-fterraform-dev"
  }
}

resource "aws_subnet" "homolog" {
  provider = aws.homolog

  vpc_id     = module.vpc.vpc_id_homolog
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "subnet-fterraform-homolog"
  }
}
