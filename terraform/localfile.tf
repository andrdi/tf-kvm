resource "local_file" "inventory" {
  filename = "${path.module}/../ansible/hosts"
  file_permission  = "0644"

  content = templatefile("${path.module}/inventory.tpl", {
    allrecords = libvirt_domain.internal_domains[*]
  })

#   provisioner "local-exec" {
#     command = "ANSIBLE_CONFIG=${path.module}/../ansible/ansible.cfg ansible-playbook ${path.module}/../ansible/site.yml"
#   }
}