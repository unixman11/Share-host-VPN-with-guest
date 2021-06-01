#! /bin/bash
path=$(pwd)
cd $path
sudo pfctl -a com.apple.internet-sharing/shared_v4 -N -f new_vm_network_rules.conf 2>/dev/null
sudo pfctl -a com.apple.internet-sharing/shared_v4 -s nat 2>/dev/null

