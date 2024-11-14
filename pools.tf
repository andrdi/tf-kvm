resource "libvirt_pool" "kvm-images" {
  name = "kvm-images"
  type = "dir"
  path = "/home/andrey/kvm/images"
}
