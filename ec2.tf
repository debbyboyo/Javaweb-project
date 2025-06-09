resource "aws_instance" "workstation" {
  ami           = "ami-0c2b8ca1dad447f8a" # Amazon Linux 2023 in us-east-2
  instance_type = "t2.small"
  subnet_id     = aws_subnet.public_az1.id
  key_name      = "Jesus"
  security_groups = [aws_security_group.ssh_access.name]

  tags = {
    Name = "workstation"
  }
}

resource "aws_instance" "node1" {
  ami           = "ami-0c2b8ca1dad447f8a"
  instance_type = "t2.small"
  subnet_id     = aws_subnet.public_az1.id
  key_name      = "Jesus"
  security_groups = [aws_security_group.ssh_access.name]

  tags = {
    Name = "k8s-node-1"
  }
}

resource "aws_instance" "node2" {
  ami           = "ami-0c2b8ca1dad447f8a"
  instance_type = "t2.small"
  subnet_id     = aws_subnet.public_az2.id
  key_name      = "Jesus"
  security_groups = [aws_security_group.ssh_access.name]

  tags = {
    Name = "k8s-node-2"
  }
}
