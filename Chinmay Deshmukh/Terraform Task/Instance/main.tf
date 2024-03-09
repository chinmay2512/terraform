#Create Instance Using Terraform
resource "aws_instance" "this_instance" {
  ami           = "ami-0e670eb768a5fc3d4"
  instance_type = "t2.small"

  tags = {
    Name = "terraform"
  }
}