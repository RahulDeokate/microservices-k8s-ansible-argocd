resource "aws_vpc" "ansible_vpc" {
  cidr_block = var.vpc_cidr
  enable_dns_support = true
  enable_dns_hostnames = true
}

resource "aws_internet_gateway" "ig" {
  vpc_id = aws_vpc.ansible_vpc.id
}

resource "aws_subnet" "subnet_1" {
  vpc_id = aws_vpc.ansible_vpc.id
  availability_zone = var.availability_zone_1
  cidr_block = var.cidr_block_1
  map_public_ip_on_launch = true
}

resource "aws_subnet" "subnet_2" {
  vpc_id = aws_vpc.ansible_vpc.id
  availability_zone = var.availability_zone_2
  cidr_block = var.cidr_block_2
  map_public_ip_on_launch = true
}

resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.ansible_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ig.id
  }
}

resource "aws_route_table_association" "aws_route_table_association_1" {
  subnet_id = aws_subnet.subnet_1.id
  route_table_id = aws_route_table.rt.id
}

resource "aws_route_table_association" "aws_route_table_association_2" {
  subnet_id = aws_subnet.subnet_2.id
  route_table_id = aws_route_table.rt.id
}