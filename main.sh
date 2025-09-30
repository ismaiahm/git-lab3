#!/bin/bash

PUBLIC_IP=$(curl -4 -s https://icanhazip.com)
echo "$PUBLIC_IP"