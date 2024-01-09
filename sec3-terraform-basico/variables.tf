variable "aws_region" {
  type        = string
  description = ""
}

variable "aws_ami" {
  type        = string
  description = ""
}

variable "instance_type" {
  type        = string
  description = ""
}

variable "instance_tags" {
  type        = map(string)
  description = ""
  default = {
    Nome    = "Ubuntu"
    Project = "Intance AWS com Terraform"
  }
}

variable "environment" {
  type        = string
  description = ""
}