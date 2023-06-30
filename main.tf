provider "aws" {
  region = var.region

}

resource "aws_instance" "webserver" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name


  connection {
    type             = "ssh"
    user             = "ubuntu"
    private_key_path = file(var.private_key_path)
    host             = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt update -y",
      "sudo apt install ngnix -y"
    ]

  }

}
