locals {
  # Общие префиксы для имен ВМ
  vm_prefix = "netology-develop"
  env_suffix = "platform"

  # Имена ВМ через интерполяцию
  vm_web_name = "${local.vm_prefix}-${local.env_suffix}-web"
  vm_db_name = "${local.vm_prefix}-${local.env_suffix}-db"
  
}

