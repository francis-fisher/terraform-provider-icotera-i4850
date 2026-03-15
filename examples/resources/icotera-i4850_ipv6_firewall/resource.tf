resource "icotera-i4850_ipv6_firewall" "example2" {
  name = "example2"
  protocol = "tcp" # can be "tcp", "udp", or "any"
  port_start = 555
  port_end = 555 # port_end can be omitted for a single port range


# The ip address within your local network that you wish to expose
# If the device has multiple ipv6 addresses, you should look for a
# globally-routable address based on the prefix assigned
# by the isp, rather than a link-local address.
# Stable-privacy addresses may be preferred to EUI-64.
  destination_ip = "2001:db8::ff00:42:8329"

# a prefix length of 128 bits means an exact match against the provided address
  destination_prefix_length = 128

# source_ip and source_prefix_length can be omitted
  source_ip = "::"
  source_prefix_length = 128
}
