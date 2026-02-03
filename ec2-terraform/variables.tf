variable "instance_name" {
  default = "terraform-ec2"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "key_name" {
  description = "Existing EC2 key pair name"
}

variable "my_ip" {
  description = "Your public IP with /32"
}
