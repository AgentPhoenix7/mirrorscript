#!/bin/bash

set -eu -o pipefail # fail on error and report it, debug all lines

echo installing the must-have pre-requisites
sudo apt update
sudo apt install apt-transport-https
echo copying /etc/apt/sources.list to /etc/apt/sources.list.bk
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bk
echo changing http to https
sudo sed -i 's/http:/https:/g' /etc/apt/sources.list
echo done
echo run 'sudo apt clean; sudo apt update' for the changes to load
