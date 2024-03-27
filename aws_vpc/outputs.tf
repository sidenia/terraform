output "subnet_id" {
  description = "id da subnet criada na aws"
  value       = aws_subnet.subnet-sid.id
}

output "security_group_id" {
  description = "value of the security group"
  value       = aws_security_group.security_group.id
}