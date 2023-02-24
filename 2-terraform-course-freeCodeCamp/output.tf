output "instance_availability_zone" {
  description = "Availability zone of the EC2 instance"
  value       = aws_instance.test_server.availability_zone
}
output "instance_cpu_core_count" {
  description = "Availability zone of the EC2 instance"
  value       = aws_instance.test_server.cpu_core_count
}
output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.test_server.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.test_server.public_ip
}



