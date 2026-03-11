
resource "aws_cloudwatch_log_group" "vpn_logs" {
  for_each = var.vpns

  name              = "/aws/vpn/${each.value.log_name}"
  retention_in_days = 30

  tags = {
    Name = each.value.log_name
  }
}
