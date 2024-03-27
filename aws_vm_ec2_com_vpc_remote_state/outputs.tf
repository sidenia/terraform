output "vm_ip" {
  description = "value of the public ip of the vm"
  value       = aws_instance.vm.public_ip
}