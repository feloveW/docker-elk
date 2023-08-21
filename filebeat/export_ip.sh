#!/bin/bash

# 尝试获取本机IP地址（支持 eth0 和 ens33 两种网络接口名称）
ip_address_eth0=$(ip -4 addr show eth0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')
ip_address_ens33=$(ip -4 addr show ens33 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')

# 检查 eth0 的 IP 地址是否存在
if [ ! -z "$ip_address_eth0" ]; then
    echo "本机IP地址（eth0）: $ip_address_eth0"
    export IP=$ip_address_eth0
fi

# 检查 ens33 的 IP 地址是否存在
if [ ! -z "$ip_address_ens33" ]; then
    echo "本机IP地址（ens33）: $ip_address_ens33"
    export IP=$ip_address_ens33
fi

# 如果都没有找到 IP 地址
if [ -z "$ip_address_eth0" ] && [ -z "$ip_address_ens33" ]; then
    echo "无法获取本机IP地址"
fi

echo $IP
