
resource "aws_key_pair" "levelup_key" {
    key_name = var.KEY_NAME
    public_key = file(var.PATH_TO_PUBLIC_KEY)
}

#Create AWS Instance
resource "aws_instance" "MyFirstInstnace" {
  ami           = var.AMI_ID
  instance_type = var.INSTANCE_TYPE
  vpc_security_group_ids = [aws_security_group.allow-levelup-ssh.id]
  availability_zone = var.AVAILABILITY_ZONE
  key_name      = aws_key_pair.levelup_key.key_name

  user_data = file("installapache.sh")

  tags = {
    Name = "${var.INSTANCE_NAME}"
  }
}

output "public_ip" {
  value = aws_instance.MyFirstInstnace.public_ip 
}
