resource "aws_instance" "gfgos" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name = aws_key_pair.gfg_keypair.key_name
  tags = {
    Name = var.instance_name
  }
  vpc_security_group_ids = [aws_security_group.gfg-sg.id]
  subnet_id = aws_subnet.public_subnet.id
  count = 250
}

# resource "aws_instance" "gfgos2" {
#   ami           = var.ami_id
#   instance_type = var.instance_type
#   key_name = aws_key_pair.gfg_keypair.key_name
#   tags = {
#     Name = var.instance_name
#   }
#   vpc_security_group_ids = [aws_security_group.gfg-sg.id]
#   subnet_id = var.subnet_id
# }


resource "aws_key_pair" "gfg_keypair" {
  key_name   = "mykey31st"
  public_key = file("D:/GFG/gfg-40-class/terraform_scripts/key.pub")
}


resource "aws_security_group" "gfg-sg" {
  name        = "mysg123"
  vpc_id      = aws_vpc.gfg_vpc.id
  dynamic ingress {
    for_each = var.security_group_allowed_ports
    content {
    description      = "TLS from VPC"
    from_port        = ingress.value
    to_port          =  ingress.value
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
    }

  }
    egress { #outbound rule
        description = "All outbound traffic"
        from_port   = 0 #all ports
        to_port     = 0
        protocol    = "-1" #all protocols
        cidr_blocks = ["0.0.0.0/0"]
    }
}