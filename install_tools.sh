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
python3 -m pip install pyinstaller

apt install golang-go -y
apt install ruby -y

apt install ncat -y 

sudo chmod 777 /opt

# FORENSICS
apt install strings binwalk steghide -y
gem install zsteg

## Stegseek
wget https://github.com/RickdeJager/stegseek/releases/download/v0.6/stegseek_0.6-1.deb -O /opt
dpkg -i /opt/stegseek_0.6-1.deb
rm /opt/stegseek_0.6-1.deb

pip install stringcheese
# todo: stringcheese, stegseek, ghidra

# OSINT
git clone https://github.com/sherlock-project/sherlock /opt/sherlock
cd /opt/sherlock
python3 -m pip install -r requirements.txt

git clone https://github.com/Datalux/Osintgram.git /opt/Osintgram
cd /opt/Osintgram
python3 -m pip install -r requirements.txt

# PENTEST
## FFUF
git clone https://github.com/ffuf/ffuf /opt/ffuf
cd /opt/ffuf
go get
go build
ln -s /opt/ffuf/ffuf /usr/bin/ffuf

## Burpsuite
apt install openjdk-8-jre -y

# john, hashcat, seclists, smbclient, smbmap, enum4linux, impacket, sqlmap, ftp, showmount, redis-cli, sshpass
