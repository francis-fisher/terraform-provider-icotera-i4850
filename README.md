A terraform provider for an Icotera i4850 series routers.

Developed with Icotera i4850-31 but expected to work with other variants. Reference https://www.normann-engineering.com/en/products/1445/icotera-i4850/

# FEATURES

* assign static dhcp4 leases (Status-\>LAN)
* configure ipv4 port forwarding (Services-\>Port Forwarding)

# PLANNED FEATURES

* configure ipv6 firewall (Services-\>Ipv6 firewall)
* configure dhcp (Settings-\>LAN)

# POSSIBLE ENHANCEMENTS

* ipv4 port forwarding could send a list of multiple port forwards in a list, instead of modifying one row at a time (speeding up big changes)
* instead of using headless chrome, could use direct http requests which would avoid UI scraping

# INSTALL

The provider uses a headless chrome client (via chromedp) to interact with the router's web interface.

Tested with chromium on ubuntu 24.04

# IMPORTING INTO TERRAFORM

static lease uses the mac address as a key

`terraform import icotera\_i4850\_static\_lease.example 00:11:22:33:44:55`

port forward uses the row number as a key

`terraform import icotera\_i4850\_port\_forward.example1 128`

