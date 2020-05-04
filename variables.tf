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
    eu-west-1 = "ami-035966e8adab4aaad"
    us-east-1 = "ami-055df5de4f42cf331"
    us-west-1 = "ami-040b9bc6e3b5d78e1"
    us-west-2 = "ami-003634241a8fcdec0"
  }
}

variable "terraform_private_key" {
  description = "Full private key - sensitive write only"
}
