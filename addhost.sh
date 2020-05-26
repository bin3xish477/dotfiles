#!/bin/bash

addhost() {
	sudo echo "${1}      ${2}" >> /etc/hosts
}

if [[ -z ${1} ]] || [[ -z ${2} ]]
then
       echo "usage: ${0} IP HOSTNAME"
fi

IP=$1
HOSTNAME=$2

addhost $IP $HOSTNAME
