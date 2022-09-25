resource "local_file" "lifecycle" {
    filename = "data_out/lifecycle.txt"
    content = "We have 3 types of lifecycle rules"
    lifecycle {
      create_before_destroy = true
    }
}