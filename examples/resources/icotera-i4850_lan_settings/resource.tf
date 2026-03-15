resource "icotera-i4850_lan_settings" "example" {
  # This page controls IPv4 DHCP
  dhcp_enabled    = true
  pool_start      = "192.168.0.5"
  pool_end        = "192.168.0.250"
  lease_time      = 86400
  max_lease_time  = 86400
  primary_dns     = "1.1.1.1"
  secondary_dns   = "1.0.0.1"
  wins_server     = "0.0.0.0"
  # This will usually be the same as the ip address of the router
  gateway         = "192.168.0.1"
  # Whether or not IPv6 Router Advertisements are sent. The IPv6 DNS
  # servers sent in these messages cannot be configured here.
  ipv6_ra_enabled = true
}
