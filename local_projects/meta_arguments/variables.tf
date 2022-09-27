variable "filename" {
  type=set(string)
  default = [ 
    "./data_in/cats.txt",
    "./data_in/dogs.txt"
   ]
}