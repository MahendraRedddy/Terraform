# output "abc" {
#  value = "Hello\nWorld"
# }

 variable "abc" {
   default="100"
 }
output "abc" {
  value =var.abc
}

variable "abc1" {
}

output "abc1" {
  value = var.abc1
}

 variable "abc2" {
   default = 200
 }
output "abc2" {
  value =var.abc2
}


variable "string" {
  default ="Hello"
}

variable "number" {
  default = 1000
}

variable "boolean" {
  default = true
}

output "string" {
  value = "var.string"
}

output "number" {
  value = var.number
}
output "boolean" {
  value =var.boolean
}