output "vpc_id" {
  description = "vpc id"
  value = aws_vpc.ansible_vpc.id
}

output "subnet_1_id" {
  description = "public subnet 1 id"
  value = aws_subnet.subnet_1.id
}

output "subnet_2_id" {
  description = "public subnet 2 id"
  value = aws_subnet.subnet_2.id
}