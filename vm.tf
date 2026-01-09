resource "proxmox_virtual_environment_vm" "vm" {
  for_each = var.vms

  name      = each.value.name
  node_name = var.vm_node

  clone {
    vm_id        = var.vm_template
    datastore_id = var.vm_datastore
    full         = true
  }

  cpu {
    cores = each.value.cores
  }

  memory {
    dedicated = each.value.memory
  }

  disk {
    interface    = "scsi0"
    datastore_id = var.vm_datastore
    size         = each.value.disk_size
  }

  network_device {
    model  = "virtio"
    bridge = "vmbr0"
    #vlan_id   = var.vm_vlan
    firewall = true
  }

  initialization {
    datastore_id = var.vm_datastore

    user_account {
      keys     = [var.ssh_pub_key]
      username = each.value.ssh_username
    }

    ip_config {
      ipv4 {
        address = "dhcp"
      }
    }
  }

  on_boot = true

  lifecycle {
    ignore_changes = [
      started
    ]
  }
}

