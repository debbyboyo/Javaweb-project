resource "aws_instance" "workstation" {
  ami                         = "ami-0ae9f87d24d606be4" # Amazon Linux 2023 us-east-2
  instance_type               = "t2.small"
  key_name                    = "Jesus"
  subnet_id                   = aws_subnet.public_az1.id
  associate_public_ip_address = true

  tags = {
    Name = "workstation"
  }
}

resource "aws_instance" "node1" {
  ami                         = "ami-0ae9f87d24d606be4"
  instance_type               = "t2.small"
  key_name                    = "Jesus"
  subnet_id                   = aws_subnet.public_az1.id
  associate_public_ip_address = true

  tags = {
    Name = "k8s-node1"
  }
}

resource "aws_instance" "node2" {
  ami                         = "ami-0ae9f87d24d606be4"
  instance_type               = "t2.small"
  key_name                    = "Jesus"
  subnet_id                   = aws_subnet.public_az2.id
  associate_public_ip_address = true

  tags = {
    Name = "k8s-node2"
  }
}
