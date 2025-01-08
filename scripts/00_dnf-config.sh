#!/bin/bash

source ~/setup-env/utils.sh

add_line_if_not_exists "max_parallel_downloads=10" /etc/dnf/dnf.conf
add_line_if_not_exists "fastestmirror=true" /etc/dnf/dnf.conf

cat /etc/dnf/dnf.conf
