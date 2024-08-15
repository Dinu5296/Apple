resource "aws_instance" "demo1" {
  ami = "ami-0c8e23f950c7725b9"
  instance_type = "t2.micro"
}