resource "aws_instance" "web" {
  
    count = lookup(var.instance, local.env)["number"]

    ami = lookup(var.instance, local.env)["ami"]

    instance_type = lookup(var.instance, local.env)["type"]

    tags = {
      
      Name = format("Minha maquina web ${local.env} %d", count.index+1)

      Env = local.env
    }

}