#!/bin/bash

set -eu -o pipefail # fail on error and report it, debug all lines

echo installing the must-have pre-requisites
while read -r p ; do sudo apt install -y $p ; done < <(cat << "EOF"
    apt-transport-https
EOF
)
echo copying /etc/apt/sources.list to /etc/apt/sources.list.bk
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bk
echo changing http to https
sudo sed -i 's/http:/https:/g' /etc/apt/sources.list
echo done
echo run 'sudo apt clean; sudo apt update' for the changes to load