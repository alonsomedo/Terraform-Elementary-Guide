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
    filename = "data/pets.txt"
    content = "We love pets!"
    file_permission = "0700"
}


resource "random_pet" "my-pet" {
    prefix = "Mrs"
    separator = "."
    length = "1"
}
