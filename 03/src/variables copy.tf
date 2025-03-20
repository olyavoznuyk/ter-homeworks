###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
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
  description = "VPC network&subnet name"
}

### ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDEDLFZ63sHrWDcOeeCGTS2lkTzg/ABgMzdVl51f9x4NXBAGPUGeDy9IE9CdBIxgLwQUefW3r6gQsnDQ8sZSgDZVPKVH9o1u4lN+rQolnt0Dc/7vOcfmYa9DecuCgbi0PDsnMYixJmHxWBgMTxW/kbpxaq1bGbSSfkVej6OznvBLJBqMsgbo2G8kJTN4UNkMODBTaaBldqktXpU7Z4zOD99kDlwtNC7qNHPNWoNIkWAt/pGTfCuXedAK/Fwu8xUzPEDzkwooQAr18KawhTdOK/UsTxV5Y97MKFHQ13q2gs+rFQgdfEyLV6iVkALK6q1bXGy+cUk2phUMt79grO1wlQN3+UzjWufn1dw8zlXKrPnnJIFie4s+LzFMy8tM6Y6XmkPp32Qhb2AjBlpfGD1UmkZMtnbiro6LeS6HV6630YclXXW/OtN0RtzA/FzBTLyxNgKo6v28rOnru7V558ycdUsKaZ3PH9qdbKxYWasViv8QeVwW0RKTibGR1XpREnVbMU= avt548499@HPEliteBook845G7NotebookPCd4391f11"
  description = "ssh-keygen -t ed25519"
}
