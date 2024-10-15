

- Step 1: Open Your Terminal.
  
- Step 2: ```ip addr show```
  
  ![image](https://github.com/user-attachments/assets/4923e0f3-eaa2-4c8d-9f27-6f54edbf438a)
  
Step 3: modify accordingly to `sudo nano /etc/network/interfaces`.

Step 4: Example per case shown in the screenshot
 ```bash
# This file describes the network interfaces available on your system
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
