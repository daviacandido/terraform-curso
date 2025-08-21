resource "aws_key_pair" "key" {
  key_name   = "aws-key"
  public_key = file("~/.ssh/aws-key.pub")
}

resource "aws_instance" "vm" {
  ami                     = ""
  instance_type           = "t2.micro"
  key_name                = aws_key_pair.key.key_name
  subnet_id               = data.terraform_remote_state.vpc.outputs.subnet_id
}