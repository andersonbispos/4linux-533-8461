variable "vpc_cidr" {
  description = "Bloco CIDR para ser utilizado ao criar uma VPC"
  type        = string
}

variable "vpc_name" {
  description = "Nome da VPC"
  type        = string
  default     = "vpc_terraform"
}