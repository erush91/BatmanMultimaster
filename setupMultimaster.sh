#!/bin/bash

sudo ifconfig bat0 multicast
sudo route add -net 224.0.0.0 netmask 240.0.0.0 dev bat0

cat /proc/sys/net/ipv4/ip_forward
cat /proc/sys/net/ipv4/icmp_echo_ignore_broadcasts
sudo sh -c "echo 1 >/proc/sys/net/ipv4/ip_forward"
sudo sh -c "echo 0 >/proc/sys/net/ipv4/icmp_echo_ignore_broadcasts"
sudo service procps restart
netstat -g
cat /proc/sys/net/ipv4/ip_forward
cat /proc/sys/net/ipv4/icmp_echo_ignore_broadcasts
ping 224.0.0.1
