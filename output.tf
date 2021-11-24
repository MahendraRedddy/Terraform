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