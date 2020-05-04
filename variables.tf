variable "public_key_path" {
  description = <<DESCRIPTION
Path to the SSH public key to be used for authentication.
Ensure this keypair is added to your local SSH agent so provisioners can
connect.

Example: ~/.ssh/terraform.pub
DESCRIPTION
}

variable "key_name" {
  description = "Desired name of AWS key pair"
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "us-west-2"
}

variable "aws_amis" {
  default = {
    eu-west-1 = "ami-0a4f4704a9146742a"
    us-east-1 = "ami-055df5de4f42cf331"
    us-west-1 = "ami-0238c6e72a7e906fc"
    us-west-2 = "ami-046842448f9e74e7d"
  }
}
