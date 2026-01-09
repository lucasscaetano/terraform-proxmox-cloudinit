vms = {

  vm01 = {
    name         = "development"
    cores        = 2
    memory       = 4096
    disk_size    = 80
    ssh_username = "Development"
  }




  vm02 = {
    name         = "kube-01"
    cores        = 2
    memory       = 4096
    disk_size    = 120
    ssh_username = "kubernetes"
  }

  vm03 = {
    name         = "kube-02"
    cores        = 2
    memory       = 4096
    disk_size    = 120
    ssh_username = "kube"
  }

}


