variable "aws_region" {

  type = object({

    dev = string

    prod = string 
    
  })

  default = {

    dev = "sa-east-1"

    prod = "us-east-1" 
    
  }
}

variable "instance" {
  
    type = object({

      dev = object({

        ami = string

        type = string

        number = number

      })

      prod = object({

        ami = string

        type = string

        number = number

      })
    })


    default = {

      dev = {

        ami = "ami-0424a16d0e63b113b"

        type = "t2.micro"

        number = 1

      }

      prod = {

        ami = "ami-0424a16d0e63b113b"

        type = "t2.micro"

        number = 2

      }

    }

}