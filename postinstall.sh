#!/bin/bash
# Set up swapfile
dd if=/dev/zero of=/var/swap bs=1M count=512
chmod 600 /var/swap
# Temporarily disabled as this fails in chroot on systems where /var/swap is in use
# mkswap /var/swap
