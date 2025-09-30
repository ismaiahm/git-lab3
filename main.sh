#!/bin/bash

CURRENT_IP=$(cat current-ip.txt)
PUBLIC_IP=$(curl -4 -s https://icanhazip.com)
echo "$PUBLIC_IP"

if [[ "$PUBLIC_IP" != "$CURRENT_IP" ]]; then
    echo "You have a new public IP"
    echo "$PUBLIC_IP" > current-ip.txt
fi