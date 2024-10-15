

- Step 1: Open Your Terminal.
- Step 2: ```ip addr show```

 ```bash

2: ens33: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
    link/ether 00:0c:29:3e:8d:10 brd ff:ff:ff:ff:ff:ff
    inet 192.168.1.100/24 brd 192.168.1.255 scope global dynamic ens33
       valid_lft 86025sec preferred_lft 86025sec
    inet6 fe80::20c:29ff:fe3e:8d10/64 scope link
       valid_lft forever preferred_lft forever

    ```

```bash # This file describes the network interfaces available on your system
# and how to activate them. For more information, see interfaces(5).

source /etc/network/interfaces.d/*

# The loopback network interface
auto lo
iface lo inet loopback

# The primary network interface
auto eth0
iface eth0 inet static
    address 192.168.197.130   # Your desired static IP
    netmask 255.255.255.0     # Your subnet mask
    gateway 192.168.197.1      # Your router's IP address (replace as necessary)
    dns-nameservers 8.8.8.8 8.8.4.4  # Your DNS servers

```

## Actual config will like 

```bash
source /etc/network/interfaces.d/*

# The loopback network interface
auto lo
iface lo inet loopback

# The primary network interface
auto eth0
iface eth0 inet static
    address 192.168.197.130   
    netmask 255.255.255.0     
    gateway 192.168.197.1      
    dns-nameservers 8.8.8.8 8.8.4.4  

```
