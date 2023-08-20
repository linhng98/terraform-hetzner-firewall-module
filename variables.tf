variable "name" {
  description = "Name of the Network to create (must be unique per project)."
  type        = string
}

variable "rules" {
  description = "Configuration of a Rule from this Firewall."
  type = list(object({
    direction   = string
    protocol    = string
    port        = optional(number)
    source_ips  = list(string)
    description = optional(string)
  }))
}

variable "labels" {
  description = "User-defined labels (key-value pairs) should be created with."
  type        = map(string)
  default     = {}
}

variable "label_selector" {
  description = "Resources the firewall should be assigned to."
  type        = string
}
