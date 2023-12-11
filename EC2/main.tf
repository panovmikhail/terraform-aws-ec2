module "aws_ec2_instance" {
  source = "./aws_ec2_instance"
  ami = "ami-0b2ac948e23c57071"
  instance_type = "t2.micro"
  aws_access_key = var.aws_access_key
  aws_secret_key = var.aws_secret_key
}