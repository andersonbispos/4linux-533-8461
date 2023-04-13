resource "aws_instance" "db_vcp_terraform" {
  ami           = "ami-06e46074ae430fba6" # <- ami Amazon Linux (us-east-1)
  instance_type = "t2.micro"

  subnet_id                   = aws_subnet.subnet_terraform_east_1c.id
  associate_public_ip_address = true

  vpc_security_group_ids = [aws_security_group.sg_vpc_terraform.id]

  tags = {
    Name = "db_vpc_terraform"
  }
}