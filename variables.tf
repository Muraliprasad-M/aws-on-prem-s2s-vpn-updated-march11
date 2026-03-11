
variable "region" {
  description = "AWS region"
  type        = string
  default     = "eu-west-2"
}

variable "vpns" {
  description = "Dynamic VPN configuration"
  type = map(object({
    vpn_name    = string
    cgw_name    = string
    cgw_ip      = string
    bgp_asn     = number
    tgw_id      = string
    log_name    = string
    route_table = string
  }))
}
