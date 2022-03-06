#!/bin/bash

clear
figlet moon
echo -e "\033[1;33m[\033[31;1m+\033[1;33m]\033[1;00m welcome to \033[0;35mmoon\033[1;00m tools \033[0;32mv1.0 \033[1;33m[\033[31;1m+\033[1;33m]\033[1;00m"
echo -e "\033[1;33m[\033[31;1m+\033[1;33m]\033[1;00m    made by \033[31;1mN454 SENPAI\033[1;00m     \033[1;33m[\033[31;1m+\033[1;33m]\033[1;00m"
echo -e "\033[1;33m[\033[31;1m+\033[1;33m]\033[1;00m      \033[31;1m3xploit.id team\033[1;33m       \033[1;33m[\033[31;1m+\033[1;33m]\033[1;00m"
echo -e ""
echo -e "\033[31;1m1\033[1;33m.Install metasploit"
echo -e "\033[31;1m2\033[1;33m.Install hakku"
echo -e "\033[31;1m3\033[1;33m.Install sqlmap"
echo -e "\033[31;1m4\033[1;33m.Install obfuscate"
echo -e "\033[31;1m5\033[1;33m.Install Ubuntu"
echo -e "\033[31;1m6\033[1;33m.Install kali nethunter\033[1;00m"
echo -e ""
read -p "moon: " pil;
if [ $pil == "1" ]
then
        pkg update && pkg upgrade
        pkg install wget bash
        wget https://github.com/Hax4us/TermuxBlack/raw/master/install.sh
        bash install.sh -i
        pkg install ruby ruby2 && pip install lolcat
        pkg install git
        cd $HOME
        git clone https://github.com/Hax4us/Metasploit_termux
        cd Metasploit_termux && chmod +x metasploit.sh
        ./metasploit.sh

elif [ $pil == "2" ]
then
        pkg update && pkg upgrade
        pkg install python python2 python3 git
        cd $HOME
        git clone https://github.com/4shadoww/hakkuframework
        cd hakkuframework
        chmod +x hakku
        ./hakku

elif [ $pil == "3" ]
then
        pkg update && pkg upgrade
        pkg install python python2 python3 git
        cd $HOME
        git clone https://github.com/sqlmapproject/sqlmap
        cd sqlmap
        python2 sqlmap.py

elif [ $pil == "4" ]
then
        pkg update && pkg upgrade
        pkg install git bash python2
        pkg install nodejs
        cd $HOME
        npm install -g bash-obfuscate
        git clone https://github.com/Syhrularv/obfuscate
        cd obfuscate
        python2 bash.py

elif [ $pil == "5" ]
then
        pkg update && pkg upgrade
        pkg install proot
        pkg install proot-distro
        proot-distro install ubuntu
        proot-distro login ubuntu

elif [ $pil == "6" ]
then
        pkg update && pkg upgrade
        termux-setup-storage
        pkg install wget
        wget -O install-nethunter-termux https://offs.ec/2MceZWr
        chmod +x install-nethunter-termux
        ./install-nethunter-termux

else
    echo -e "\033[31;1mPlease enter correct input!!\033[1;00m"

fi