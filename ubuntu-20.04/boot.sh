#!/bin/bash
#
# notice, this file is executed by Vagrant with sudo
echo "Phase: bootstrap.sh"

export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get -y install virt-what libpam-systemd acpid
apt-get -y upgrade


# cleanup
apt-get -y autoremove
