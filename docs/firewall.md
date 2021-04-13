# Reference

  - http://manpages.ubuntu.com/manpages/focal/en/man8/ufw.8.html
  - http://manpages.ubuntu.com/manpages/bionic/man8/avahi-daemon.8.html
  - https://superuser.com/questions/739481/what-might-these-connection-attemps-mean
  - https://ubuntu-mate.community/t/gufw-ufw-firewall-configuration-for-a-usable-desktop/5254
  - https://www.thegeekdiary.com/how-to-configure-multicast-on-an-ip-address-interface/
  - https://community.roonlabs.com/t/enabling-igmp-and-broadcast-in-firewalld-for-linux-roon-server/82544/4
  - https://www.letscloud.io/community/how-to-set-up-a-firewall-with-ufw-on-ubuntu-1804

# Debug

    sudo ufw show listening

    # Allow all access from RFC1918 networks to this host:

    ufw allow from 10.0.0.0/8
    ufw allow from 172.16.0.0/12
    ufw allow from 192.168.0.0/16

# Avahi

An mDNS message is a multicast UDP packet sent using the following addressing:

mDNS:  
IPv4 address 224.0.0.251 or IPv6 address ff02::fb  
UDP port 5353  
When using Ethernet frames, the standard IP multicast MAC address
01:00:5E:00:00:FB (for IPv4) or 33:33:00:00:00:FB (for IPv6)

67,68 udp DHCP

For example, to allow X11 connections, which use ports 6000-6007, use the
following commands:

    ufw allow 6000:6007/tcp
    ufw allow 6000:6007/udp

==================

    # 5353 224.0.0.251 Chrome
    # 5353 * avahi-daemon

    # sudo ufw route allow from {{ .basic_ipv4 }}
    # sudo ufw insert 1 allow in from {{ .basic_ipv4 }} proto igmp
    # sudo ufw insert 2 allow in from {{ .basic_ipv4 }} proto tcp
    # sudo ufw insert 3 allow in from {{ .basic_ipv4 }} proto udp
    # sudo ufw insert 4 allow in from any to {{ .basic_ipv4 }} proto igmp

## show listening

    tcp:
      220 * (sshd)
       [ 3] allow log from 10.0.10.0/24 to any app OpenSSH
       [ 9] allow log from 10.0.10.0/24 to 10.0.10.0/24 proto tcp comment 'syncthing'
       [19] limit log from any port 80 proto tcp comment 'Site navigation'
       [20] limit log from any port 443 proto tcp comment 'Site navigation'
    
    udp:
      47637 * (avahi-daemon)
       [11] allow log from 10.0.10.0/24 app DLNA comment 'UPnP discover'
       [12] allow log from 10.0.10.0/24 to 10.0.10.0/24 proto udp comment 'UPnP Play'
    
      5353 * (avahi-daemon)
       [10] allow log from 10.0.10.0/24 to any app avahi comment 'Bonjour discover'
       [11] allow log from 10.0.10.0/24 app DLNA comment 'UPnP discover'
       [12] allow log from 10.0.10.0/24 to 10.0.10.0/24 proto udp comment 'UPnP Play'
    
      631 * (cups-browsed)
       [11] allow log from 10.0.10.0/24 app DLNA comment 'UPnP discover'
       [12] allow log from 10.0.10.0/24 to 10.0.10.0/24 proto udp comment 'UPnP Play'
    
      68 10.0.10.117 (NetworkManager)
       [ 1] allow log from 10.0.10.0/24 to any app DHCP
       [11] allow log from 10.0.10.0/24 app DLNA comment 'UPnP discover'
       [12] allow log from 10.0.10.0/24 to 10.0.10.0/24 proto udp comment 'UPnP Play'
    
    tcp6:
      1716 * (kdeconnectd)
       [33] allow log from fe80::/64 to any app KDE_Connect
       [35] allow log from fe80::/64 to fe80::/64 proto tcp comment 'syncthing'
       [38] limit log from any port 80 proto tcp comment 'Site navigation'
       [39] limit log from any port 443 proto tcp comment 'Site navigation'
    
      220 * (sshd)
       [29] allow log from fe80::/64 to any app OpenSSH
       [35] allow log from fe80::/64 to fe80::/64 proto tcp comment 'syncthing'
       [38] limit log from any port 80 proto tcp comment 'Site navigation'
       [39] limit log from any port 443 proto tcp comment 'Site navigation'
    
    udp6:
      1716 * (kdeconnectd)
       [34] allow log from fe80::/64 to any app KDE_Connect
       [37] allow log from any app DLNA to ff02::f comment 'UPnP discover ipv6'
    
      41599 * (avahi-daemon)
       [37] allow log from any app DLNA to ff02::f comment 'UPnP discover ipv6'
    
      5353 * (avahi-daemon)
       [36] allow log to ff02::fb app avahi comment 'Bonjour discover'
       [37] allow log from any app DLNA to ff02::f comment 'UPnP discover ipv6'
    
