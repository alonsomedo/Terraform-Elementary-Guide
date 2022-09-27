# terraform {
#   required_providers {
#     k8s = {
#       source  = "hashicorp/kubernetes"
#       version = "> 1.12.0, != 1.13.1, < 1.13.3 "
#     }

#     helm = {
#       source  = "hashicorp/helm"
#       version = "~> 1.2.0"
#     }
#   }
# }


terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "1.4.0"
    }
  }
}

resource "local_file" "pet" {
  filename = "./data_out/pet.txt"
  content = "We love pets"
}