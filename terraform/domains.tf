resource "libvirt_domain" "internal_domains" {
  count = length (var.domains)
  name      = element(var.domains, count.index).hostname
  memory    = element(var.domains, count.index).memory
  vcpu      = element(var.domains, count.index).vcpu
  cpu {
    mode = "host-passthrough"
  }
  cloudinit = libvirt_cloudinit_disk.commoninit.id

  network_interface {
    network_id     = libvirt_network.kvm-internal1.id
    hostname       = element(var.domains, count.index).hostname
    addresses      = [element(var.domains, count.index).address]
  }

  disk {
    volume_id = libvirt_volume.root[count.index].id
  }
}
