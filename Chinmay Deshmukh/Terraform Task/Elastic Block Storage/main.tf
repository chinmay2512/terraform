#Create EBS Vol And Attach Vol
resource "aws_ebs_volume" "ebs_volume" {
  availability_zone = "us-east-2a"
  size              = 20
  type              = "gp2"

  tags = {
    Name = "ebs-volume-terraform-demo"
  }
}

resource "aws_volume_attachment" "ebc_volume_attachment" {
  device_name = "/dev/xvdf"
  volume_id   = aws_ebs_volume.ebs_volume.id
  instance_id = aws_instance.ebs_instance_example.id
}