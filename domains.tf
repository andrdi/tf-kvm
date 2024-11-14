resource "libvirt_domain" "management" {
  name      = "management"
  memory    = "1024"
  vcpu      = 1
  cloudinit = libvirt_cloudinit_disk.commoninit.id

  network_interface {
    network_id     = libvirt_network.kvm-internal1.id
    hostname       = "management"
    addresses      = ["192.168.123.3"]
  }

  disk {
    volume_id = libvirt_volume.management-root.id
  }
}
