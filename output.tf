output "vm_full_info" {
  description = "Informações completas das VMs criadas"
  #sensitive   = true

  value = {
    for k, vm in proxmox_virtual_environment_vm.vm :
    k => {
      name      = vm.name
      vm_id     = vm.vm_id
      node_name = vm.node_name

      # Hardware
      cpu_cores = vm.cpu[0].cores
      memory_mb = vm.memory[0].dedicated
      disk_gb   = vm.disk[0].size

      #Rede
      mac_addresses  = vm.mac_addresses
      ipv4_addresses = vm.ipv4_addresses
      #ipv6_addresses  = vm.ipv6_addresses
      network_devices = vm.network_device
      interface_names = vm.network_interface_names

      # Cloud-init
      /*
      cloud_init_user = vm.initialization[0].user_account[0].username
      ip_config       = vm.initialization[0].ip_config
      cloud_init_full = vm.initialization
*/
    }
  }
}

