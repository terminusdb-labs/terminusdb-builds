#!/bin/bash
. /etc/os-release
if [ "$VERSION_ID" != "22.04" ]
then
    add-apt-repository ppa:swi-prolog/stable -y
fi
apt update
apt install swi-prolog -y
