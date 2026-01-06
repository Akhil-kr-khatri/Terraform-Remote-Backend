resource "aws_instance" "ec2" {
  count         = var.instance_count
  ami           = "ami-0ecb62995f68bb549"
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]
  

  tags = {
    Name = "EC2-Instance-${count.index}"
  }
}

output "instance_ids" {
  value = aws_instance.ec2[*].public_ip
}
