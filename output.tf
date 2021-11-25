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
  value = "value 1=${var.samplex},value 3=${var.samplex}"
}


