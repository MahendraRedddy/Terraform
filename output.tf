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

variable "sample" {}
output "sample" {
  value = var.sample
}