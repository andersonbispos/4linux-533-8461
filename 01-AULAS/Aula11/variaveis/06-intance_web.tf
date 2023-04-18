resource "aws_instance" "web1" {
  ami           = var.ami_amazon
  instance_type = var.web_size

  //exemplo de referencia a subnet criada com count:
  //subnet_id                   = aws_subnet.subnets[0].id

  //exemplo de referencia a subnet criada com for_each:
  subnet_id                   = aws_subnet.subnets["us-east-1a"].id

  associate_public_ip_address = var.associate_public_ip

  //vpc_security_group_ids = [aws_security_group.sg_vpc_terraform.id]

  tags = {
    Name = format("%s-%s", var.web_prefix_name, var.vpc_name)
  }

  user_data = base64encode("#!/bin/bash\n sudo yum install nginx -y; sudo systemctl enable nginx; sudo systemctl start nginx")
}