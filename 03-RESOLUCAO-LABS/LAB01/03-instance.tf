resource "aws_instance" "vm1" {
  ami           = "ami-007855ac798b5175e"
  instance_type = "t2.micro"

  associate_public_ip_address = true

  vpc_security_group_ids = ["sg-0b0a2ba5f87dfb6ff"]

  tags = {
    Name = "vm1"
  }
}