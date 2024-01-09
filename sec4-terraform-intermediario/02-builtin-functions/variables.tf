variable "env" {}

variable "aws_region" {
  type        = string
  description = ""
  default     = "sa-east-1"
}

variable "instance_ami" {
  type        = string
  description = ""
  default     = "ami-0424a16d0e63b113b"

  validation {
    condition = length(var.instance_ami) > 4 && substr(var.instance_ami, 0, 4) == "ami-"

    error_message = "Valor invalido para AMI"
  }
}

variable "instance_number" {
  type = object({
    dev  = number
    prod = number
  })

  description = "Number of instances to create"

  default = {
    dev  = 1
    prod = 3
  }
}

variable "instance_type" {
  type = object({
    dev  = string
    prod = string
  })
  description = ""
  default = {
    dev  = "t2.micro"
    prod = "t2.micro"
  }
}