resource "aws_security_group" "ssh_sg" {
  name = "terraform-ssh-sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.my_ip]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "ec2" {
  ami                    = "ami-0f58b397bc5c1f2e8" # Ubuntu 24.04 Mumbai
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.ssh_sg.id]

  tags = {
    Name = var.instance_name
  }
}
