resource "aws_instance" "datascientest-instance" {
  ami           = "ami-064736ff8301af3ee"
  instance_type = var.instance_type
  key_name      = "SAI-datascientest_keypair"

  tags = {
    Name = "datascientest"
  }
}