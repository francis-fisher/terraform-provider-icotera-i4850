A terraform provider for an Icotera i4850 series routers.

Developed with Icotera i4850-31 but expected to work with other variants. Reference https://www.normann-engineering.com/en/products/1445/icotera-i4850/

# FEATURES

* assign static dhcp4 leases (Status-\>LAN)
* configure ipv4 port forwarding (Services-\>Port Forwarding)
* configure ipv6 firewall (Services-\>Ipv6 firewall)

# INSTALL

The provider uses a headless chrome client (via chromedp) to interact with the router's web interface.

Tested with chromium on ubuntu 24.04

# IMPORTING INTO TERRAFORM

static lease uses the mac address as a key

`terraform import icotera-i4850\_static\_lease.example 00:11:22:33:44:55`

port forward uses the row number as a key

`terraform import icotera-i4850\_port\_forward.example1 128`

the ipv6 firewal also uses the row number as a key

`terraform import icotera-i4850\_ipv6\_firewall.example2 32`

# DEBUG TIPS

If you need to debug an interaction, I recommend editing internal/provider/client.go and turning off headless mode via
`chromedp.Flag("headless", false)
