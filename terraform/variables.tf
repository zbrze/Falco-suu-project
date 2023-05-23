variable "subnet_id_1" {
  description = "First subnet ID"
  type    = string
  default = "insert_here"
}
variable "subnet_id_2" {
  description = "Second subnet ID"
  type    = string
  default = "insert_here"
}
variable "subnet_id_3" {
  description = "Third subnet ID"
  type    = string
  default = "insert_here"
}

variable "role_arn" {
  description = "LabRole arn"
  type    = string
  default = "insert_here"
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}