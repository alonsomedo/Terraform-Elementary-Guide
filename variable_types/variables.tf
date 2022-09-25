
variable "prefix_list" {
    default = ["Mr", "Mrs", "Sr"]
    type = list(string)
}

variable "prefix-number" {
    default = [1, 2, 3]
    type = list(number)
}

variable "file-content" {
    type = map
    default = {
        "statement1" = "We love pets!"
        "statement2" = "We love animals!"
    }
}

variable "file-content-number" {
    type = map(number)
    default = {
        "dogs" = 1
        "cats" = 2
    }
}

# Set can't have duplicates values
variable "fruits" {
    type = set(string)
    default = ["apple", "banana"]
}

variable "bella" {
    type = object({
        name = string
        color = string
        age = number
        food = list(string)
        favorite_pet = bool
    })
    default = {
      age = 1
      color = "red"
      favorite_pet = false
      food = [ "causa", "ceviche", "pollito" ]
      name = "bella"
    }
}


variable "kitty" {
    type = tuple([string, number, bool])
    default = ["cat", 2, false]
}