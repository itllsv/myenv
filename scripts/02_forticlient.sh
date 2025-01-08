#!/bin/bash

sudo dnf config-manager addrepo --from-repofile=https://repo.fortinet.com/repo/forticlient/7.4/centos/8/os/x86_64/fortinet.repo
sudo yum install -y forticlient
