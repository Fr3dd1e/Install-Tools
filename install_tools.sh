#!/bin/bash

apt upgrade -y
apt update -y

# MISC
apt install tmux -y
apt install git -y
apt install vim nano -y
apt install okular eom ghex -y
apt install python3 python -y
apt install python3-pip python-pip -y
apt install golang-go -y
apt install ncat -y 

## PIP
pip3 install pyinstaller
sudo chmod 777 /opt

# FORENSICS
apt install strings binwalk steghide -y

## Stegseek
wget https://github.com/RickdeJager/stegseek/releases/download/v0.6/stegseek_0.6-1.deb -O /opt
dpkg -i /opt/stegseek_0.6-1.deb
rm /opt/stegseek_0.6-1.deb

pip install stringcheese
# todo: stringcheese, stegseek, ghidra

# PENTEST
## FFUF
git clone https://github.com/ffuf/ffuf /opt/ffuf
cd /opt/ffuf
go get
go build
ln -s /opt/ffuf/ffuf /usr/bin/ffuf

# john, hashcat, seclists, smbclient, smbmap, enum4linux, impacket, sqlmap, ftp, showmount, redis-cli, sshpass
