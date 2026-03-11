
resource "aws_vpn_connection" "vpn" {
  for_each = var.vpns

  transit_gateway_id  = each.value.tgw_id
  customer_gateway_id = aws_customer_gateway.cgw[each.key].id

  type = "ipsec.1"

  tunnel1_log_options {
    cloudwatch_log_options {
      log_enabled       = true
      log_group_arn     = aws_cloudwatch_log_group.vpn_logs[each.key].arn
      log_output_format = "json"
    }
  }

  tunnel2_log_options {
    cloudwatch_log_options {
      log_enabled       = true
      log_group_arn     = aws_cloudwatch_log_group.vpn_logs[each.key].arn
      log_output_format = "json"
    }
  }

  tags = {
    Name = each.value.vpn_name
  }
}
