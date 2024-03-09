#Create Instance For EBS
resource "aws_instance" "ebs_instance_example" {
  ami           = "ami-02ca28e7c7b8f8be1"
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public_1.id

  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  key_name = var.key_name

  tags = {
    Name = "Ec2-with-VPC"
  }
}