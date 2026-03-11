
resource "aws_ec2_transit_gateway_route_table_association" "assoc" {
  for_each = aws_vpn_connection.vpn

  transit_gateway_attachment_id = each.value.transit_gateway_attachment_id
  transit_gateway_route_table_id = data.aws_ec2_transit_gateway_route_table.rt[
    var.vpns[each.key].route_table
  ].id
}

resource "aws_ec2_transit_gateway_route_table_propagation" "prop" {
  for_each = aws_vpn_connection.vpn

  transit_gateway_attachment_id = each.value.transit_gateway_attachment_id
  transit_gateway_route_table_id = data.aws_ec2_transit_gateway_route_table.rt[
    var.vpns[each.key].route_table
  ].id
}
