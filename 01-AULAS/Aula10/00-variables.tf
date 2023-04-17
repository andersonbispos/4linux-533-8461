## Exemplos de passagem de valor de variaveis
//default
//$env:TF_VAR_vpc_cidr="192.168.10.0/24"|export TF_VAR_vpc_cidr="192.168.10.0/24"
//terraform.tfvars
//*.auto.tfvars
//terraform plan -var="vpc_cidr=192.168.50.0/25"

/* variable "default_region" {
    description = "Regiao padrao para provisionar ambientes"
    type = string
    default = "us-east-1"
} */

## dados vpc

variable "vpc_cidr" {
  description = "Bloco CIDR para ser utilizado ao criar uma VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "Nome da VPC"
  type        = string
  default     = "vpc_terraform"
}

## dados subnets

variable "subnet_prefix_name" {
  description = "Prefixo a ser utilizado no nome da subnet"
  type        = string
  default     = "sub"
}

variable "subnet1_cidr" {
  description = "Bloco CIDR da subnet1"
  type        = string
  default     = "10.0.1.0/24"
}

variable "subnet1_zona" {
  description = "Zona da subnet1"
  type        = string
  default     = "us-east-1b"
}

variable "subnet2_cidr" {
  description = "Bloco CIDR da subnet2"
  type        = string
  default     = "10.0.2.0/24"
}

variable "subnet2_zona" {
  description = "Zona da subnet2"
  type        = string
  default     = "us-east-1c"
}

variable "subnet_zones" {
  description = "Bloco CIDR das subnets"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1c"]
}

variable "subnet_faixas" {
  description = "Bloco CIDR das subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

## dados do disco

/* variable "db_disk_prefix_name" {
  description = "Prefixo a ser utilizado no nome da instance"
  type        = string
  default     = var.db_prefix_name # <- nao eh possivel atribuir o valor de uma variavel a outra variavel
} */

variable "db_disk_size" {
  description = "Tamanho do disco de banco"
  type        = number
  default     = 10

  validation {
    condition     = var.db_disk_size <= 50
    error_message = "O disco deve ser de no maximo 50 GB"
  }
}

## dados das instancias

variable "db_prefix_name" {
  description = "Prefixo a ser utilizado no nome da instance"
  type        = string
  default     = "db1"
}

variable "web_prefix_name" {
  description = "Prefixo a ser utilizado no nome da instance"
  type        = string
  default     = "web"
}

variable "ami_amazon" {
  description = "Imagem Amazo Linux a ser utilizada na criacao da instancia WEB"
  type        = string
  default     = "ami-06e46074ae430fba6"
}

variable "ami_ubuntu" {
  description = "Imagem a ser utilizada na criacao da instancia WEB"
  type        = string
  default     = "ami-06e46074ae430fba6"
}

variable "web_size" {
  description = "Tamanho a ser utilizado na criacao da instancia WEB"
  type        = string
  default     = "t2.micro"
}

variable "associate_public_ip" {
  description = "Define se a instancia deve ter ip publico"
  type        = bool
  default     = true
}