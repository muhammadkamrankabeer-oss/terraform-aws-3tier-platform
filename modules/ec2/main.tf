resource "aws_key_pair" "terraform_key" {
  key_name   = "terraform-key"
  public_key = file("${path.root}/terraform-key.pub")
}

resource "aws_instance" "frontend" {
  ami                    = "ami-0f58b397bc5c1f2e8"
  instance_type          = "t2.micro"
  subnet_id              = var.public_subnet_id
  vpc_security_group_ids = [var.web_sg_id]
  key_name               = aws_key_pair.terraform_key.key_name

  associate_public_ip_address = true

  tags = {
    Name = "frontend-server"
  }
}

resource "aws_instance" "backend" {
  ami                    = "ami-0f58b397bc5c1f2e8"
  instance_type          = "t2.micro"
  subnet_id              = var.private_subnet_id
  vpc_security_group_ids = [var.app_sg_id]
  key_name               = aws_key_pair.terraform_key.key_name

  tags = {
    Name = "backend-server"
  }
}
