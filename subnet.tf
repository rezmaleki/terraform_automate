resource "aws_subnet" "core-subnet-private-1" {
    vpc_id = "${aws_vpc.core-vpc.id}"
    cidr_block = "${var.private_subnet_1_cidr}"
    availability_zone = "us-west-2a"
    tags = {
        Name = "Harmonelo-core-subnet-private-1"
    }
}

