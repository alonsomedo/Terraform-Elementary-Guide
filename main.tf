/*
Structure of resource block
<block> <parameters> {
    key1 = value1
    key2 = value2
}

*/

# Type of block: resource
# resource type: "local_file", where local=provider, file=resource
# resource name: "pet", logical name
# filename, content are arguments
resource "local_file" "pet" {
    filename = var.filename
    content = var.content
}


resource "random_pet" "my-pet" {
    prefix = var.prefix
    separator = var.prefix
    length = var.length
}


resource "local_file" "map-test" {
  filename = "data/map_test.txt"
  content = var.file-content["statement2"]
}
