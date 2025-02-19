variable "cloud_id" {
  type        = string
  default = "b1ga4bt1b7rmgrntoq1o"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  default = "b1ggvs5gfmh3tqvj537v"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  ######default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCEln7W+sL4BD33OayHEcVq5PRK3hrvNzDrvsz8mic5d9zmOFlGfzO5VbVnuR08rfsf1oPia/ke1zSpSTSXvWzZIFfqXtz3McN6oZzynvLqh6bS4setwDAGNa3FzCntMlGANSaNZQTq5h5RWsi0qs3DFiLNDDi9/DG864RZXDa6RH6iGspISpn+ez6t6Oswhz+c69b7IEbQhDFlR6jsqL/yPdm58XXOI1ZT94jPkDt6j8reATJABCgssL19TVLaO13renglaZxu//rv7kbq1e938wISEqPouxetsS6aw/6I8quGAPRoYvj9cqQWuMCDlLniLoSOFqmfC1x7WXvpsIkNWFdKXxbUEHR4tVGh5kloF7HVNmy8FCuwF30+OqvXe91yDfWgqrRphPXOHLQI287iIPoBtMCS4cbP3SP6hkic/KWIBkchh4dFxJx3iGb8nRD00LOrJb3kDQrGAFlwrXHg6eOPD4AVUUybiYbjqDylDJP0P4wmjiYtnLLhRns/prc= olya@olya-laptop"
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDEDLFZ63sHrWDcOeeCGTS2lkTzg/ABgMzdVl51f9x4NXBAGPUGeDy9IE9CdBIxgLwQUefW3r6gQsnDQ8sZSgDZVPKVH9o1u4lN+rQolnt0Dc/7vOcfmYa9DecuCgbi0PDsnMYixJmHxWBgMTxW/kbpxaq1bGbSSfkVej6OznvBLJBqMsgbo2G8kJTN4UNkMODBTaaBldqktXpU7Z4zOD99kDlwtNC7qNHPNWoNIkWAt/pGTfCuXedAK/Fwu8xUzPEDzkwooQAr18KawhTdOK/UsTxV5Y97MKFHQ13q2gs+rFQgdfEyLV6iVkALK6q1bXGy+cUk2phUMt79grO1wlQN3+UzjWufn1dw8zlXKrPnnJIFie4s+LzFMy8tM6Y6XmkPp32Qhb2AjBlpfGD1UmkZMtnbiro6LeS6HV6630YclXXW/OtN0RtzA/FzBTLyxNgKo6v28rOnru7V558ycdUsKaZ3PH9qdbKxYWasViv8QeVwW0RKTibGR1XpREnVbMU= avt548499@HPEliteBook845G7NotebookPCd4391f11"
  description = "ssh-keygen -t ed25519"
}


variable "vm_web_image_family" {
  type        = string
  default     = "ubuntu-2004-lts"
}


variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v1"
}


variable "vms_resources" {
  type = map(object({
    cores         = number
    memory        = number
    core_fraction = number
  }))
  default = {
    web = {
      cores         = 2
      memory        = 1
      core_fraction = 5
    }
    db = {
      cores         = 2
      memory        = 2
      core_fraction = 20
    }
  }
}