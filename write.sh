#!/bin/bash
disk=""
apt update && apt install curl gunzip fdisk lkblk -y
curl -fS https://downloads.openwrt.org/releases/21.02.3/targets/x86/64/openwrt-21.02.3-x86-64-generic-ext4-combined.img.gz -o openwrt.img.gz
gunzip openwrt-*.img.gz

# Identify disk (to replace sdX in the following command below)
lsblk
 
# Write image
# dd if=openwrt.img bs=1M of=/dev/$disk
