resource "libvirt_volume" "root" {
  count = length (var.domains)
  name = "${var.domains[count.index].hostname}-root.qcow2"
  format = "qcow2"
  pool   = libvirt_pool.kvm-images.name
  source = "/home/andrey/install/iso/rhel-9.5-x86_64-kvm.qcow2"
}
