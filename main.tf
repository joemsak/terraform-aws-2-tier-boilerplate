provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

resource "aws_instance" "rrd" {
  ami           = "ami-04590e7389a6e577c"
  instance_type = "t2.micro"

  provisioner "remote-exec" {
    inline = [
      "sudo amazon-linux-extras enable nginx1.12",
      "sudo yum -y install nginx",
      "sudo systemctl start nginx"
    ]
  }

  provisioner "local-exec" {
    command = "echo ${aws_instance.rrd.public_ip}"
  }
}

resource "aws_eip" "ip" {
  instance = "${aws_instance.rrd.id}"
}
