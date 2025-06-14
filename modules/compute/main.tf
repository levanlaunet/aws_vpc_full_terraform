resource "aws_instance" "ec2_instance" {
  ami                    = var.image_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.ec2_security_group_id]
  key_name               = var.key_name

  tags = {
    Name = var.instance_name
  }
}
