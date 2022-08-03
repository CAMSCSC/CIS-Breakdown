# Overview - Ubuntu 18.04

## [1.1 - Filesystems](./1/1.1.md)

- 1.1.1 - Disable unnecessary filesystems
- 1.1.2 - 1.1.5 - /tmp/ configuration
- 1.1.6 - 1.1.9 - /dev/shm/ configuration
- 1.1.3 - 1.1.4 - /var/tmp/ configuration
- 1.1.8 - /home/ configuration
- 1.1.22 - sticky bit on all world-writable directories
- 1.1.23 - disable automounting
- 1.1.24 - disable USB storage

## [1.2 - Configure Software Updates](./1/1.2.md)

- 1.2.1 - Configure package manager repositories
- 1.2.2 - Configure package manager GPG keys

## [1.3 - Filesystem Integrity Checking](./1/1.3.md)

- 1.3.1 - 1.3.2 - Enable AIDE (skip)

## [1.4 - Bootloader Configuration](./1/1.4.md)

- 1.4 - Bootloader configuration

## [1.5 - Additional Process Hardening](./1/1.5.md)

- 1.5.2 - ASLR (Address space location randomization)
- 1.5.3 - Disable prelink (for ASLR)
- 1.5.4 - Restrict core dumps

## [1.6 - Mandatory Access Control (MAC)](./1/1.6.md)

- 1.6.1.1 - 1.6.1.4 - AppArmor

## [1.7 - Command Line Warning Banners](./1/1.7.md)

- 1.7.2 - 1.7.4 - Modify permissions

## [1.8 - GNOME Display Manager Configuration](./1/1.8.md)

- 1.8.2 - 1.8.3 - GDM configuration
- 1.8.4 - Ensure XDCMP is not enabled

## [1.9 - Update Software (APT)](./1/1.9.md)

- 1.9 - apt-upgrade

## [2 - Services](./2.md)

- 2.1.1.1 - 2.1.1.4 - Time sync services (skip)
- 2.1.2 - 2.1.17 - Disable services
- 2.2.1 - 2.2.6 - Disable services clients
- 2.3 - Disable/mask unnecessary services

## [3.1 - Disable unused network protocols and devices](./3.md#31---disable-unused-network-protocols-and-devices)

- 3.1.1 - Disable IPv6
- 3.1.2 - Disable WiFi

## [3.2 - 3.3 - Network Parameters](./3.md#32---host-network-parameters)

- 3.2.1 - 3.2.2 - Network Parameters (host)
- 3.3.1 - 3.3.9 - Network Parameters (host and router)

## [3.4 - Uncommon Network Protocols](./3.md#34---uncommon-network-protocols)

- 3.4.1 - 3.4.4 - Disable uncommon network protocols

## [3.5 - Firewall](./3.md#35---firewall-configuration)

- 3.5.1.1 - 3.5.1.7 - Install and configure UFW (use GUFW)
- 3.5.2.x - Configure nftables (skip)
- 3.5.3.x - Configure iptables (skip)

## Configure System Auditing

- 4.1.1 - 4.1.2 - Enable and configure auditd
- 4.1.3 - Log date and time change events
- 4.1.4 - 4.1.17 - Configure auditd

## Configure Logging

- 4.2.1 - Configure rsyslog
- 4.2.2 - Configure journald
- 4.2.3 - Configure log permissions
- 4.3 - 4.4 - Configure logrotate

## Configure time-based job schedulers

- 5.1.1 - 5.1.8 - Configure cron
- 5.1.9 - Configure AT

## Configure sudo

- 5.2.2 - 5.2.3 - Sudo configuration

## Configure SSH Server
- 5.3.1 - 5.3.22 - SSH Configuration

## Configure PAM
- 5.4.1 - 5.4.4 - Configure PAM (Password authentication manager)

## User Accounts and Environment

- 5.5.1.1 - 5.5.1.5 - Configure password requirements
- 5.5.2 - 5.5.5 - Configure system accounts
- 5.6 - 5.7 - Restrict root and su access

## System File Permissions

- 6.1.1 - Audit package locations (manual, time-consuming)
- 6.1.2 - 6.1.9 - Configure important directory permissions
- 6.1.10 - Ensure no world-writable files
- 6.1.11 - 6.1.12 - Check for unowned or ungrouped files
- 6.1.13 - 6.1.14 - Audit SUID and GUID executables

## User and Group Settings

- 6.2.1 - 6.2.3 - Validate password integrity
- 6.2.4 - 6.2.6 - Configure home directories
- 6.2.7 - 6.2.10 - Configure dot files
- 6.2.11 - 6.2.12 - Validate root account integrity
- 6.2.13 - 6.2.16 - Remove duplicate groups and users
- 6.2.17 - Check shadow group