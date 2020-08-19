resource "random_id" "id" {
  #  keepers = {
  #    uuid = uuid()
  #  }
  byte_length = var.byte_length
}

data "null_data_source" "id" {
  inputs = {
    random_id = random_id.id.hex
    uuid      = uuid()
  }
}

terraform {
  required_providers {
    random_id = "2.1.2"
    null      = "2.2.0"
  }
}
