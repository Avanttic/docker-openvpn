#/bin/bash

iptables -t nat -A POSTROUTING -o tun0 -j MASQUERADE
iptables -A FORWARD -i eth0 -j ACCEPT

cd /vpn
openvpn --config openvpn.ovpn --daemon
