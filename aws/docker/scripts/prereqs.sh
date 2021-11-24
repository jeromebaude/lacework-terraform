#!/bin/bash

while [ ! -f /var/lib/cloud/instance/boot-finished ]; do echo 'Waiting for cloud-init...'; sleep 1; done
sudo apt-get update
sudo apt-get install -y \
  curl \
  unzip \
  gnupg \
  jq