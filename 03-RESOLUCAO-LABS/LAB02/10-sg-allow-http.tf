resource "aws_security_group" "sg_allow_http" {
  name        = "sg_allow_http"
  description = "Allow default inbound traffic"

  vpc_id = aws_vpc.tf_vpc_lab.id

  ingress {
    description = "Allow HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "sg_allow_http"
  }
}