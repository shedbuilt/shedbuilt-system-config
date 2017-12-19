#!/bin/bash
# Set up swapfile
dd if=/dev/zero of=/var/swap bs=1M count=512
chmod 600 /var/swap
mkswap /var/swap
