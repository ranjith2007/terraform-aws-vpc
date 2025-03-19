data "aws_availability_zones" "available" {
  state = "available"
}

data "aws_vpc" "default" {
    #default = true
  id = "vpc-04bd84d041dcee061"
}

data "aws_route_table" "main" {
  vpc_id = data.aws_vpc.default.id
  filter {
    name = "association.main"
    values = ["true"]
  }

}