# Reference

  - http://manpages.ubuntu.com/manpages/focal/man8/ufw.8.html
  - http://manpages.ubuntu.com/manpages/focal/man8/avahi-daemon.8.html
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

Setup NetworkManager:

    nmcli connection show
    sudo nmcli connection modify 'Connection Name' +connection.mdns yes
    sudo nmcli connection reload

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


# Extra info


    multicast
    ff12::8384 is a MULTICAST address
    ff02::/80

    sudo ufw show added

    sudo ufw show listening
    sudo ufw status numbered
    sudo ufw status verbose

