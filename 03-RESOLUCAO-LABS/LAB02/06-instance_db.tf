resource "aws_instance" "dbserver1" {
  ami           = "ami-0b7af114fb404cd23" # <- ami Ubuntu Linux (sa-east-1)
  instance_type = "t2.micro"

  subnet_id                   = aws_subnet.subnet_lab_east_1c.id
  associate_public_ip_address = true

  vpc_security_group_ids = [aws_security_group.sg_allow_default_ports.id]

  tags = {
    Name = "dbserver1"
  }
}