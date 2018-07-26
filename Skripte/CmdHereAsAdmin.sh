#!/bin/bash
# from https://blogs.msdn.microsoft.com/powershell/2017/02/01/installing-latest-powershell-core-6-0-release-on-linux-just-got-easier/

# Import the public repository GPG keys
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -

# Register the Microsoft Ubuntu repository
curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list | sudo tee /etc/apt/sources.list.d/microsoft.list

# Update apt-get
sudo apt-get update

# Install PowerShell
sudo apt-get install -y powershell

# Start PowerShell
powershell

# -------
# if you get an error installing libcu55 something something, download it manually
# full instructions here http://packages.ubuntu.com/en/xenial/amd64/libicu55/download
# I used this
#
# wget http://mirror.internode.on.net/pub/ubuntu/ubuntu/pool/main/i/icu/libicu55_55.1-7_amd64.deb
# wget http://mirror.internode.on.net/pub/ubuntu/ubuntu/pool/main/i/icu/libicu55-dbg_55.1-7_amd64.deb

# sudo dpkg -i libicu55_55.1-7_amd64.deb
# sudo dpkg -i libicu55-dbg_55.1-7_amd64.deb
# Then try installing powershell again
