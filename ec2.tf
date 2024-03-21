# Creating EC2 Instance
resource "aws_instance" "python5" {
  ami                         = "ami-01387af90a62e3c01"
  instance_type               = "t2.micro"
  key_name                    = "master-1"
  vpc_security_group_ids      = [aws_security_group.ec2-SG.id]
  subnet_id                   = aws_subnet.subnet-1.id
  associate_public_ip_address = true
  user_data                   = file("userdata.sh")

  tags = {
    Name = "Python"
  }
}
