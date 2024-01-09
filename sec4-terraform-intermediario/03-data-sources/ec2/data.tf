data "aws_ami" "ubuntu" {

  most_recent = true

  owners = ["amazon"]

  name_regex = "ubuntu"

}