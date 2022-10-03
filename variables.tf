variable "region" {
  type    = string
  default = "us-west-2"
}

variable "profile" {
  type    = string
  default = "terraform"
}

#variable "environment" {
#  type    = string
#  default = "dev"
#}

#variable "vpc_id" {
#  type    = string
#  default = "vpc-61ae810a"
#}

# Defining CIDR Block for VPC
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}
# Defining CIDR Block for 1st private Subnet
variable "private_subnet_1_cidr" {
  default = "10.0.1.0/24"
}
# Defining CIDR Block for 2nd private Subnet
variable "private_subnet_2_cidr" {
  default = "10.0.2.0/24"
}
# Defining CIDR Block for public Subnet
variable "public_subnet_1_cidr" {
  default = "10.0.0.0/24"
}
#-------------core rds private subnet-------
# Defining CIDR Block for private Subnet
variable "rds_private_subnet_1_cidr" {
  default = "10.0.4.0/24"
}
# Defining CIDR Block for public Subnet
variable "rds_private_subnet_2_cidr" {
  default = "10.0.5.0/24"
}
# Defining RDS db instance class
variable "db_instance" {
default = "db.t3.micro"
}
