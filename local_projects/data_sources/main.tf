resource "local_file" "data_source" {
    filename = "data_out/dog_source.txt"
    content = data.local_file.dog_source.content
}

data "local_file" "dog_source" {
  filename = "./data_in/dog.txt"
}
