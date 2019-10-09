# Creation of ElastiCache subnet group
resource "aws_elasticache_subnet_group" "default" {
  name       = "${var.namespace}-cache-subnet"
  subnet_ids = "${aws_subnet.default.*.id}"
}


# Creation of Subnet in 2 different AZ's
resource "aws_subnet" "default" {
  count                   = "${length(var.cidr_blocks)}"
  vpc_id                  = "${aws_vpc.default.id}"
  availability_zone       = "${data.aws_availability_zones.available.names[count.index]}"
  cidr_block              = "${var.cidr_blocks[count.index]}"
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.namespace}"
  }
}