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

apt install p7zip-full p7zip-rar

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

## Gobuster
wget https://github.com/OJ/gobuster/releases/download/v3.1.0/gobuster-linux-amd64.7z -O /opt/gobuster.7z
cd /opt
7z x gobuster.7z
rm gobuster.7z
ln -s /opt//opt/gobuster/gobuster-linux-amd64/gobuster /usr/bin/gobuster

# Enum4Linux-ng
git clone https://github.com/cddmp/enum4linux-ng /opt/enum4linux
cd /opt/enum4linux
python3 -m pip install -r requirements.txt
ln -s /opt/enum4linux/enum4linux-ng.py /usr/bin/enum4linux

# john, hashcat, enum4linux, impacket, sqlmap, ftp, redis-cli
git clone https://github.com/danielmiessler/SecLists.git /opt/Seclists
apt install smbclient -y
apt install smbmap -y
apt install sshpass -y
apt install nfs-common -y
apt install ftp -y
apt install sqlmap -y

