variable "vms" {
  type = map(object({
    name      = string
    cores     = number
    memory    = number
    disk_size = number
  }))
}

variable "vm_template" {
  type    = number
  default = 9001
}

variable "vm_node" {
  type    = string
  default = "proxmox"
}

variable "vm_datastore" {
  type    = string
  default = "local-lvm"
}


variable "ssh_pub_key" {
  type = string
}

variable "pve_api_url" {
  type = string
}

variable "pve_token_id" {
  type = string
}

variable "pve_token_secret" {
  type = string
}

variable "ssh_username" {
  default = "lab"
}

