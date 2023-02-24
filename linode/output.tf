output "instance_id" {
  description = "ID of the Linode instance"
  value       = linode_instance.terraform_linode.id
}


output "instance_public_ip" {
  description = "Public IP address of the Linode instance"
  value       = linode_instance.terraform_linode.ip_address
}

output "instance_availability_zone" {
  description = "Availability zone of the Linode instance"
  value       = linode_instance.terraform_linode.region
}
