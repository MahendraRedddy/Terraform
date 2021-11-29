# output "abc" {
#  value = "Hello\nWorld"
# }

#variable "abc" {
# default="100"
#}
#output "abc" {
# value =var.abc
#}

#variable "abc1" {
#}

#output "abc1" {
# value = var.abc1
#}

variable "abc2" {
  default = 200
}
output "abc2" {
  value ="value of abc2=${var.abc2}"
}

variable "samplex" {
  default = [
    "Hello",
    100,
    true
  ]
}

output "samplex" {
  value = "value 1 =${var.samplex[0]},value 3=${var.samplex[2]}"
}

variable "sampley" {
  default = {
    string  = "Hello",
    number  = 100,
    boolean = true
  }
}

output "sampley" {
  value = "String = ${var.sampley["string"]},Number = ${var.sampley["number"]},Boolean=${var.sampley["boolean"]}"
}

variable "a" {}

output "a" {
  value = var.a

}
