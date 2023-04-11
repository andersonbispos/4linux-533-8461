# exemplos de código de instancia em uma vpc específica

/* resource "aws_instance" "web_vpc_terraform" {
  ami           = "ami-06e46074ae430fba6" # <- ami Amazon Linux (us-east-1)
  instance_type = "t2.micro"

  subnet_id                   = "subnet-0e1021912ab2fbf12"
  associate_public_ip_address = true

  vpc_security_group_ids = ["sg-05822b0ad5612e4e9"]

  tags = {
    Name = "web_vpc_terraform"
  }
} */