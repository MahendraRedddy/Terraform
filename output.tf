# output "abc" {
#  value = "Hello\nWorld"
# }

 variable "abc" {
   default="100"
 }
output "abc" {
  value =var.abc
}

variable "abc1" {}

output "abc1" {
  value = var.abc1
}

# String Data type
variable "sample1" {
  default = "Hello World"
}
# Number data type
variable "sample2" {
  default = 100
}
# Boolean Data type
variable "sample3" {
  default = true
}