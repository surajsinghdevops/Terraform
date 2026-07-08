resource "aws_instance" "web" {

  ami = var.ami_id

  instance_type = var.instance_type

  key_name = var.key_name

  iam_instance_profile = aws_iam_instance_profile.profile.name

  tags = {
    Name = var.instance_name
  }

}
