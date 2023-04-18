resource "aws_instance" "web" {

  count = terraform.workspace == "prod" ? 2 : 1

  ami           = var.instance_images[terraform.workspace]
  instance_type = var.instance_sizes[terraform.workspace]

  tags = {
    Name = format("%s-%s-%s", "web", count.index, terraform.workspace)
  }
}