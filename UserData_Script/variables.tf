variable "AWS_REGION" {
default = "us-east-1"
}

variable "AMI_ID" {
  default = "ami-09d3b3274b6c5d4aa"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "../levelup_key"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "../levelup_key.pub"
}

variable "INSTANCE_TYPE" {
  default = "t2.micro"
}

variable "AVAILABILITY_ZONE" {
  default = "us-east-1a"
}

variable "SG_NAME" {
  default = "allow-levelup-ssh"
}

variable "SG_DESCRIPTION" {
  default = "security group that allows ssh connection"
}

variable "KEY_NAME" {
  default = "levelup_key"
}

variable "INSTANCE_NAME" {
  default = "custom_instance"
}