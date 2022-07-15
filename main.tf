variable "simple" {
  type = string
  description = "primitive input"
}

output "simple" {
  value = var.simple
  description = "passthrough for primit"
}

variable "complex" {
  type = object({
    foo = string
    bar = number
  })
}

output "complex" {
  value = var.complex
  description = "passthrough for object"
}