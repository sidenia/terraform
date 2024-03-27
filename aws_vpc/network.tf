# Create a VPC
resource "aws_vpc" "vpc-sid" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "vpc-terraform"
  }
}

# Create a subnet
resource "aws_subnet" "subnet-sid" {
  vpc_id     = aws_vpc.vpc-sid.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "subnet-terraform"
  }
}

# Create an internet gateway
resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.vpc-sid.id

  tags = {
    Name = "internet-gateway-terraform"
  }
}

# Create Route Table
resource "aws_route_table" "route_table" {
  vpc_id = aws_vpc.vpc-sid.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gateway.id
  }

  tags = {
    Name = "route-table-terraform"
  }
}

# Associate Route Table with Subnet
resource "aws_route_table_association" "route_table_association" {
  subnet_id      = aws_subnet.subnet-sid.id
  route_table_id = aws_route_table.route_table.id
}

# Create Security Group
resource "aws_security_group" "security_group" {
  name        = "security-group-terraform-ssh"
  description = "Permitir acesso na porta 22"
  vpc_id      = aws_vpc.vpc-sid.id

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "security-group-terraform-ssh"
  }
}