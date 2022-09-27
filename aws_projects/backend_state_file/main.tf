resource "local_file" "soccer" {
  filename = "./data_out/soccer.txt"
  content = "I love soccer!" 
}


terraform {
  backend "s3" {
    bucket = "md-corp-terraform-state-bucket01"
    key = "finance/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "state-locking"
  }
}