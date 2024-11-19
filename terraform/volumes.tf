resource "libvirt_volume" "root" {
  count = length (var.domains)
  name = "${var.domains[count.index].hostname}-root.qcow2"
  format = "qcow2"
  pool   = libvirt_pool.kvm-images.name
  source = var.image_source
}
