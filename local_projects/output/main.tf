
resource "random_pet" "my-pet" {
    prefix = var.prefix
    separator = var.separator
    length = var.length
}


output pet-name {
  value = random_pet.my-pet
  description = "Record the value of Pet Id generated by the random_pet resource"
}


