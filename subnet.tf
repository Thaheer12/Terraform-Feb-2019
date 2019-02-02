resource "aws_subnet" "mysubnet" {
  count             = "${length(var.subnet_cidr)}"
  vpc_id            = "${aws_vpc.myvpc.id}"
  cidr_block        = "${element(var.subnet_cidr,count.index)}"
  availability_zone = "${element(var.azs,count.index)}"

  tags {
    Name = "CITY_SUBNET-${count.index + 1}"
  }
}
