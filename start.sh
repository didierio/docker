#!/bin/sh

export DOCKER_PRIVATE_IP=$(ifconfig docker0 | awk -F ' *|:' '/inet adr/{print $4}')

fig rm --force -v
fig build
fig up
