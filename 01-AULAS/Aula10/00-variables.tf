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