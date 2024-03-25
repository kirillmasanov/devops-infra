terraform {
    required_providers {
        vcd = {
            source = "vmware/vcd"
        }
    }
    required_version = ">= 0.13"
}

provider "vcd" {
    auth_type = "integrated" #Тип авторизации
    max_retry_timeout = 10 #Максимальное число попыток соединения
    user = var.connect["user"] #Имя пользователя
    password = var.connect["password"] #Пароль пользователя
    org = var.connect["organization"] #Название организации
    url = var.connect["url_connect"] #Адрес, на который будут посылаться API-запросы
}