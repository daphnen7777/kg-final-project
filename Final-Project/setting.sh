#!/bin/bash
yum -y update
sysctl -w net.ipv4.ip_forward=1
/sbin/iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
yum install iptables-services
service iptables save
--//