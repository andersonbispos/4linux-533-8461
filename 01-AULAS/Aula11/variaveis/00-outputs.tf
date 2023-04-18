// exemplo de output usando map + for_each:


// exemplo de output usando count + list:

/* output "subnet_zones" {
  description = "Zonas das subnets criadas."
  value       = aws_subnet.subnets[*].availability_zone
}

output "subnet_ids" {
  description = "IDs das subnets criadas."
  value       = aws_subnet.subnets[*].id
} */

/* output "web_private_ip" {
  description = "The private IP address of the main server instance."
  value       = aws_instance.web1.private_ip
}

output "web_public_ip" {
  description = "The private IP address of the main server instance."
  value       = aws_instance.web1.public_ip
} */