resource "libvirt_pool" "kvm-images" {
  name = "kvm-images"
  type = "dir"
  path = var.default_pool_path
}
