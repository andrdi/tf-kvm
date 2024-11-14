resource "libvirt_volume" "management-root" {
  name   = "management-root"
  format = "qcow2"
  pool   = libvirt_pool.kvm-images.name
  source = "/home/andrey/install/iso/noble-server-cloudimg-amd64.img"
  #source = "https://cloud-images.ubuntu.com/noble/current/noble-server-cloudimg-amd64.img"
}