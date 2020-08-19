resource "random_id" "id" {
#  keepers = {
#    uuid = uuid()
#  }
  byte_length = var.byte_length
}

data "null_data_source" "id" {
  inputs = {
    random_id = random_id.id.hex
    uuid = uuid()
  }
}
