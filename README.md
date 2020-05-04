# terraform-test
testing terraform

Go to:

`AWS Console -> EC2 -> Key Pairs -> Create`

Download the `.pem` file - copy and paste it as the private_key

Run `ssh-keygen -y -f /path/to/your.pem`

```
key_name    = The key pair name you chose when creating in AWS
public_key  = the result of running the ssh-keygen command above
private_key = the contents of the PEM file
```


Terraform.io Workspace variables:

![](https://i.imgur.com/enyJ1fR.png)
