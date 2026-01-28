variable "instance_name" {
  description = "Name of the compute instance"
  type        = string
}

variable "machine_type" {
  description = "Machine type for the instance"
  type        = string
  default     = "e2-micro"
}

variable "zone" {
  description = "Zone for the instance"
  type        = string
}

variable "network" {
  description = "Network to attach the instance"
  type        = string
  default     = "default"
}
