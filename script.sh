#!/bin/bash
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bk
sudo sed -i 's/http/https/g' /etc/apt/sources.list