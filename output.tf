# output "abc" {
#  value = "Hello\nWorld"
# }

 variable "abc" {
   default="\n100"
 }
output "abc" {
  value =var.abc
}

variable "abc1" {}

output "abc1" {
  value = var.abc1
}