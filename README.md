# tf-kvm

Import an existing default net

```
$ $ terraform apply
...
libvirt_network.default: Creating...                                                                                                                                         
╷                                                                                     
│ Error: error defining libvirt network: operation failed: network 'default' already exists with uuid ee8c6c00-6f33-41f5-84eb-c6679a745f91 -   <network>                     
│       <name>default</name>              
│       <forward mode="nat"></forward>     
│       <bridge stp="on"></bridge>                                                    
│       <dns enable="no"></dns>                                                       
│       <ip address="192.168.122.1" family="ipv4" prefix="24">
...
$ terraform import libvirt_network.default ee8c6c00-6f33-41f5-84eb-c6679a745f91
```

```
qemu-img resize noble-server-cloudimg-amd64.img 30G
```