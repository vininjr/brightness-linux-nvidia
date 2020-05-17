#!/usr/bin/env bash

if [[ "$EUID" -ne 0 ]]; then
   echo "superuser privileges are required" 1>&2
   exit 1
fi

sudo cp brightness-nvidia.sh /usr/bin/brightness-nvidia
sudo chmod +x /usr/bin/brightness-nvidia