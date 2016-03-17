#! /bin/bash 
echo “#disable ipv6 | sudo tee -a /etc/sysctl.conf
echo net.ipv6.conf.all.disable_ipv6 = 1 | sudo tee -a /etc/sysctl.conf
echo net.ipv6.conf.default.disable_ipv6 = 1 | sudo tee -a /etc/sysctl.conf
echo net.ipv6.conf.lo.disable_ipv6 = 1 | sudo tee -a /etc/sysctl.conf
source /etc/sysctl.conf
sudo sysctl -p
cat /proc/sys/net/ipv6/conf/all/disable_ipv6
