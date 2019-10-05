resource "aws_instance" "example" {
  ami           = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.micro"
  key_name      ="Ansible"
 
  tags = {
     
        Name = "Lab1"
  }
}

