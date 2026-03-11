
vpns = {

  st = {
    vpn_name    = "st-vpn"
    cgw_name    = "st-cgw"
    cgw_ip      = "203.0.113.10"
    bgp_asn     = 65001
    tgw_id      = "tgw-st-xxxx"
    log_name    = "st-vpn"
    route_table = "st-tgw-rt-a"
  }

  ot1 = {
    vpn_name    = "ot-vpn1"
    cgw_name    = "ot-cgw1"
    cgw_ip      = "203.0.113.20"
    bgp_asn     = 65100
    tgw_id      = "tgw-ot-yyyy"
    log_name    = "ot-vpn1"
    route_table = "ot-tgw-rt-a"
  }

  ot2 = {
    vpn_name    = "ot-vpn2"
    cgw_name    = "ot-cgw2"
    cgw_ip      = "203.0.113.21"
    bgp_asn     = 65101
    tgw_id      = "tgw-ot-yyyy"
    log_name    = "ot-vpn2"
    route_table = "ot-tgw-rt-a"
  }

}
