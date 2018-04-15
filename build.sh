#!/bin/bash
# Network Config (Eth0, DHCP, systemd-resolved)
install -v -Dm644 "${SHED_PKG_CONTRIB_DIR}/systemd/network/10-eth0-dhcp.network" "${SHED_FAKE_ROOT}/etc/systemd/network/10-eth0-dhcp.network"
ln -sfv /run/systemd/resolve/resolv.conf "${SHED_FAKE_ROOT}/etc/resolv.conf"
install -v -m644 "${SHED_PKG_CONTRIB_DIR}/hostname" "${SHED_FAKE_ROOT}/etc/hostname.default"
install -v -m644 "${SHED_PKG_CONTRIB_DIR}/hosts" "${SHED_FAKE_ROOT}/etc/hosts.default"
install -v -m644 "${SHED_PKG_CONTRIB_DIR}/locale.conf" "${SHED_FAKE_ROOT}/etc/locale.conf.default"
# Readline config
install -v -m644 "${SHED_PKG_CONTRIB_DIR}/inputrc" "${SHED_FAKE_ROOT}/etc/inputrc.default"
# Shell config
install -v -m644 "${SHED_PKG_CONTRIB_DIR}/shells" "${SHED_FAKE_ROOT}/etc/shells.default"
# Automounted disk config
install -v -m644 "${SHED_PKG_CONTRIB_DIR}/fstab" "${SHED_FAKE_ROOT}/etc/fstab.default"
# Distribution info and LSB compliance
install -v -m644 "${SHED_PKG_CONTRIB_DIR}/os-release" "${SHED_FAKE_ROOT}/etc"
install -v -m644 "${SHED_PKG_CONTRIB_DIR}/lsb-release" "${SHED_FAKE_ROOT}/etc"
# Sysctl config
install -v -Dm644 "${SHED_PKG_CONTRIB_DIR}/sysctl.d/99-sysctl.conf" "${SHED_FAKE_ROOT}/etc/sysctl.d/99-sysctl.conf"
install -v -m644 "${SHED_PKG_CONTRIB_DIR}/sysctl.d/20-quiet-printk.conf" "${SHED_FAKE_ROOT}/etc/sysctl.d"
# Issue
install -v -m644 "${SHED_PKG_CONTRIB_DIR}/issue" "${SHED_FAKE_ROOT}/etc/issue.default"