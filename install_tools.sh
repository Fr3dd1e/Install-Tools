#!/bin/bash

sudo apt upgrade -y
sudo apt update -y


# TMUX
sudo apt install tmux -y
echo "# TMUX Config file" > ~/.tmux.conf
echo "set-option -g history-limit 10000" >> ~/.tmux.conf
echo "set -g prefix C-space" >> ~/.tmux.conf
echo "bind | split-window -v" >> ~/.tmux.conf
echo "bind - split-window -h" >> ~/.tmux.conf

# MISC
sudo apt install git -y
sudo apt install vim nano -y
sudo apt install okular eom ghex -y
sudo chmod 777 /opt

# FORENSICS
sudo apt install strings binwalk steghide -y
# todo: stringcheese, stegseek, ghidra
