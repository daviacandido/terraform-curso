output "vm_ip" {
  description = "IP Publico da VM"
  value       = aws_instance.vm.public_ip
}