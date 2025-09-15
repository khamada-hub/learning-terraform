#data "aws_ami" "app_ami" {
data "aws_ami" "TERRAFORM" {
  most_recent = true

 # filter {
 #   name   = "name"
 #   values = ["bitnami-tomcat-*-x86_64-hvm-ebs-nami"]
 # }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["279019749801"] # Linkbird
}

resource "aws_instance" "web" {
  #　ami           = data.aws_ami.app_ami.id
　　ami           = ami-043af60b51e92ff6a
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
