resource "aws_subnet" "core-subnet-private-1" {
    vpc_id = "${aws_vpc.core-vpc.id}"
    cidr_block = "${var.private_subnet_1_cidr}"
    availability_zone = "us-west-2a"
    tags = {
        Name = "Harmonelo-core-subnet-private-1"
    }
}
resource "aws_subnet" "core-subnet-private-2" {
    vpc_id = "${aws_vpc.core-vpc.id}"
    cidr_block = "${var.private_subnet_2_cidr}"
    availability_zone = "us-west-2b"
    tags = {
        Name = "Harmonelo-core-subnet-private-2"
    }
}
resource "aws_subnet" "core-subnet-public-1" {
    vpc_id = "${aws_vpc.core-vpc.id}"
    cidr_block = "${var.public_subnet_1_cidr}"
    map_public_ip_on_launch = "true" //it makes this a public subnet
    availability_zone = "us-west-2a"
    tags = {
        Name = "Harmonelo-core-subnet-public-1"
    }
}
#----------------------core RDS private subnet-----------------------

resource "aws_subnet" "core-rds-subnet-private-1" {
    vpc_id = "${aws_vpc.core-vpc.id}"
    cidr_block = "${var.rds_private_subnet_1_cidr}"
    availability_zone = "us-west-2a"
    tags = {
        Name = "Harmonelo-core-rds-subnet-private"
    }
}

resource "aws_subnet" "core-rds-subnet-private-2" {
    vpc_id = "${aws_vpc.core-vpc.id}"
    cidr_block = "${var.rds_private_subnet_2_cidr}"
    availability_zone = "us-west-2b"
    tags = {
        Name = "Harmonelo-core-rds-subnet-private"
    }
}
