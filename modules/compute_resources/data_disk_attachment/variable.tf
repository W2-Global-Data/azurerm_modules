variable "virtual_machine_id" {
  description = "The ID of the Virtual Machine to which the Data Disk should be attached. Changing this forces a new resource to be created."
  default = ""
}

variable "managed_disk_id" {
  description = "The ID of an existing Managed Disk which should be attached. Changing this forces a new resource to be created."
  default = ""
}

variable "lun" {
  description = ""
  default = ""
}

variable "managed_disk_id" {
  description = "The ID of the Virtual Machine to which the Data Disk should be attached. Changing this forces a new resource to be created."
  default = ""
}