resource "aws_vpc" "gfg_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "my-gfg-vpc"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.gfg_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-south-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "public-subnet-gfg"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.gfg_vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "ap-south-1b"
  map_public_ip_on_launch = false
  tags = {
    Name = "private-subnet-gfg"
  }
}

resource "aws_internet_gateway" "gfg_igw" {
  vpc_id = aws_vpc.gfg_vpc.id

  tags = {
    Name = "gfg-internet-gateway"
  }
}

resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.gfg_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gfg_igw.id
  }

  tags = {
    Name = "public-rt-gfg"
  }
}

resource "aws_route_table_association" "a_public" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public-rt.id
}

resource "aws_eip" "eip_gfg" {
  domain   = "vpc"
  tags = {
    Name = "gfg-eip"
  }
}

resource "aws_nat_gateway" "natgw" {
  allocation_id = aws_eip.eip_gfg.id
  subnet_id     = aws_subnet.public_subnet.id

  tags = {
    Name = "gw NAT"
  }
  depends_on = [aws_internet_gateway.gfg_igw]
}


resource "aws_route_table" "private-rt" {
  vpc_id = aws_vpc.gfg_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.natgw.id
  }

  tags = {
    Name = "private-rt-gfg"
  }
}


resource "aws_route_table_association" "a_private" {
  subnet_id      = aws_subnet.private_subnet.id
  route_table_id = aws_route_table.private-rt.id
}