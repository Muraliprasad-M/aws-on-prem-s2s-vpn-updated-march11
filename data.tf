
data "aws_ec2_transit_gateway_route_table" "rt" {
  for_each = {
    for k, v in var.vpns : v.route_table => v.route_table...
  }

  filter {
    name   = "tag:Name"
    values = [each.key]
  }
}
