#!/bin/bash
# Network Config (Eth0, DHCP, systemd-resolved)
install -v -Dm644 "${SHED_CONTRIBDIR}/systemd/network/10-eth0-dhcp.network" "${SHED_FAKEROOT}/etc/systemd/network/10-eth0-dhcp.network"
ln -sfv /run/systemd/resolve/resolv.conf "${SHED_FAKEROOT}/etc/resolv.conf"
install -v -Dm644 "${SHED_CONTRIBDIR}/hostname" "${SHED_FAKEROOT}/etc"
install -v -Dm644 "${SHED_CONTRIBDIR}/hosts" "${SHED_FAKEROOT}/etc"
install -v -Dm644 "${SHED_CONTRIBDIR}/locale.conf" "${SHED_FAKEROOT}/etc"
# Readline config
install -v -Dm644 "${SHED_CONTRIBDIR}/inputrc" "${SHED_FAKEROOT}/etc"
# Shell config
install -v -Dm644 "${SHED_CONTRIBDIR}/shells" "${SHED_FAKEROOT}/etc"
# Automounted disk config
install -v -Dm644 "${SHED_CONTRIBDIR}/fstab" "${SHED_FAKEROOT}/etc"
# Distribution info and LSB compliance
install -v -Dm644 "${SHED_CONTRIBDIR}/os-release" "${SHED_FAKEROOT}/etc"
install -v -Dm644 "${SHED_CONTRIBDIR}/lsb-release" "${SHED_FAKEROOT}/etc"
