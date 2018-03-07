#!/bin/bash
if [ ! -e /etc/hostname ]; then
    install -v -m644 /etc/hostname.default /etc/hostname
fi
if [ ! -e /etc/hosts ]; then
    install -v -m644 /etc/hosts.default /etc/hosts
fi
if [ ! -e /etc/locale.conf ]; then
    install -v -m644 /etc/locale.conf.default /etc/locale.conf
fi
if [ ! -e /etc/inputrc ]; then
    install -v -m644 /etc/inputrc.default /etc/inputrc
fi
if [ ! -e /etc/shells ]; then
    install -v -m644 /etc/shells.default /etc/shells
fi
if [ ! -e /etc/fstab ]; then
    install -v -m644 /etc/fstab.default /etc/fstab
fi
if [ ! -e /etc/issue ]; then
    install -v -m644 /etc/issue.default /etc/issue
fi