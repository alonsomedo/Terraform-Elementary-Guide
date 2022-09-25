resource "local_file" "pet" {
  filename = each.value
  for_each = var.filename
  content = each.value
}

output "pets" {
  value = local_file.pet
  sensitive = true
}