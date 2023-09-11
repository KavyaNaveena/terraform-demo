data "aws_ami" "ubuntu"{
    most_recent = true
}

resource "aws_instance" "ec2" {
ami = data.aws_ami.ubuntu
instance_type = "t3.micro"

tags = {
    Name = "terraform-ec2"
}
  
}