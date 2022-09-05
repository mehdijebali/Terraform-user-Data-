
resource "aws_key_pair" "levelup_key" {
    key_name = "levelup_key"
    public_key = file(var.PATH_TO_PUBLIC_KEY)
}

#Create AWS Instance
resource "aws_instance" "MyFirstInstnace" {
  ami           = var.AMI_ID
  instance_type = var.INSTANCE_TYPE
  availability_zone = var.AVAILABILITY_ZONE
  key_name      = aws_key_pair.levelup_key.key_name

  user_data = data.template_cloudinit_config.install-apache-config.rendered

  tags = {
    Name = "custom_instance"
  }
}

output "public_ip" {
  value = aws_instance.MyFirstInstnace.public_ip 
}
