variable "map_ambientes" {
  description = "Definicoes dos ambientes"
  type        = map(string)
  default = {
    dev  = "us-east-1"
    prod = "sa-east-1"
  }
}

## dados vpc

variable "vpc_prefix" {
  description = "Nome da VPC"
  type        = string
  default     = "vpc_teste"
}

variable "vpc_cidr" {
  description = "Bloco CIDR para ser utilizado ao criar uma VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "map_vpc_cidr" {
  description = "Bloco CIDR para ser utilizado ao criar uma VPC"
  type        = map(string)
  default = {
    dev  = "192.168.10.0/24"
    prod = "10.0.0.0/16"
  }
}

variable "instance_sizes" {
  description = "Tamanho da instancia"
  type        = map(string)
  default = {
    dev  = "t3a.micro"
    prod = "t3a.medium"
  }
}

variable "instance_images" {
  description = "Imagem da instancia"
  type        = map(string)
  default = {
    dev  = "ami-06e46074ae430fba6" # <- Amazon Linux - us-east-1
    prod = "ami-01f451f00dae38302" # <- Amazon Linux - sa-east-1
  }
}