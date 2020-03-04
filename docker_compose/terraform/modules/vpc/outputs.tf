output "aws_vpc_id" {
  value = aws_vpc.custom_vpc.id
}

output "aws_public_subnet_id" {
  value = aws_subnet.custom_subnet_pub.id
}