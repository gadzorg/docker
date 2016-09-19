#!/bin/bash

. /etc/profile

# Force generation of new certificates
/bin/rm -v /etc/ssh/ssh_host_*
dpkg-reconfigure openssh-server

# Create directory for user-separtion
mkdir  -p /var/run/sshd

# start sshd
/usr/sbin/sshd -D
