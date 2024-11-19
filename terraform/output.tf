output "domains_info" {
  description = "General information about created VMs"
  value = libvirt_domain.internal_domains[*].network_interface[0].addresses.0
}