resource "local_file" "map_test" {
  filename = "data_out/map_test.txt"
  content = var.file-content["statement2"] 
}


resource "local_file" "str_concatenation" {
  filename = "data_out/str_concatenation.txt"
  content = "${var.file-content["statement2"]}. The favorite color of ${var.bella.name} is ${var.bella.color}"
}
