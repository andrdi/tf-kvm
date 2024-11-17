# output "domains_info" {
#   description = "General information about created VMs"
#   value = [
#     for domain in libvirt_domain.internal_domains : {
#       id = domain.hostname
#       ip = domain.network_interface[0].addresses.0
#     }
#   ]
# }