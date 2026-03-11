
resource "aws_customer_gateway" "cgw" {
  for_each = var.vpns

  bgp_asn    = each.value.bgp_asn
  ip_address = each.value.cgw_ip
  type       = "ipsec.1"

  tags = {
    Name = each.value.cgw_name
  }
}
