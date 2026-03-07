resource "icotera-i4850_static_lease" "example" {
  hostname    = "printer"
  mac_address = "00:11:22:33:44:55"
  ip_address  = "172.16.50.50"
  enabled     = "true"
}

# the provider will fill entries from the bottom of the port forward list
# in the router web interface. This will visually separate automatic
# entries from any manually administered ones at the top of the page.
resource "icotera-i4850_port_forward" "example1" {
  name = "example1"
  protocol = "udp"
  external_port_start = "5154"
  external_port_end = "5154" # you don't need to specify external_port end if you only want a single port
  internal_ip = "172.16.40.41"
  internal_port = "5155"
  loopback = false
}

resource "icotera-i4850_ipv6_firewall" "example2" {
  name = "example2"
  protocol = "tcp"
  port_start = 555
  port_end = 555

  source_ip = "::"
  source_prefix_length = 128

  destination_ip = "::"
  destination_prefix_length = 0
}

resource "icotera-i4850_ipv6_firewall" "example3" {
  name = "example3"
  protocol = "udp"
  port_start = 558

  destination_ip = "::"
  destination_prefix_length = 128

}
