variable "name" {
  default = "bob"
}

resource "random_id" "random" {
  keepers {
    uuid = "${uuid()}"
  }
  byte_length = 12
}

output "random" {
  value = "${random_id.random.hex}"
}

output "hello_world" {
  value = "Hola, ${var.name}"
}
