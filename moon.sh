#!/bin/bash
#menu
echo -e  ;figlet "moon"
echo -e "[   ""\033[1;93mwelcome to moon tools v1.0\033[1;00m""   ]"
echo -e "[   made by @n454_snpai          ]"
echo -e "[   follow @3xploit.id           ]"
echo -e ""
echo -e "1"".Metasploit Framework + Ruby 3.1.0"
echo -e "2"".Hakku Framework"
echo -e "3"".Phpsploit Framework"
echo -e "4"".Winspy ""(root access)"
echo -e "5"".Sqlmap"
echo -e "6"".TheFatRat ""(root access)"
echo -e "7"".NexPhiser Framework"
echo -e "8"".Red Hawk"
echo -e ""
read -p "[moon] > " pil;
if [ $pil == "1" ]
then
apt update && upgrade -y
apt remove ruby -y
apt install git wget curl bash -y
bash <(curl -fsSL "https://git.io/abhacker-repo") --install ruby=3.1.0
apt install root-repo unstable-repo x11-repo -y
apt install metasploit
clear
msfconsole
elif [ $pil == "2" ]
then
apt update && apt upgrade -y
apt install python python2 python3 -y
apt install git wget curl bash -y
cd $HOME
git clone https://github.com/4shadoww/hakkuframework
cd hakkuframework
chmod +x hakku
clear
./hakku
elif [ $pil == "3" ]
then
apt update && apt upgrade -y
apt install git -y
apt install php -y
cd $HOME
git clone https://github.com/nil0x42/phpsploit
cd phpsploit/
pip3 install -r requirements.txt
clear
./phpsploit --interactive -val "help help"
elif [ $pil == "4" ]
then
apt update && apt upgrade -y
apt install git -y
apt install bash -y
cd $HOME
git clone https://github.com/TunisianEagles/winspy.git
cd winspy
chmod +x setup.sh
./setup.sh
chmod +x winspy.sh
clear
./winspy.sh
elif [ $pil == "5" ]
then
apt update && apt upgrade -y
apt install git -y
apt install python2 -y
cd $HOME
git clone https://github.com/sqlmapproject/sqlmap
cd sqlmap
clear
python2 sqlmap.py
elif [ $pil == "6" ]
then
apt update && apt upgrade -y
apt install git -y
apt install bash -y
cd $HOME
git clone https://github.com/Screetsec/TheFatRat.git
cd TheFatRat
clear
chmod +x setup.sh && ./setup.sh
elif [ $pil == "7" ]
then
apt update && apt upgrade -y
apt install git -y
apt install bash -y
apt install openssh -y
cd $HOME
git clone git://github.com/htr-tech/nexphisher.git
cd nexphisher
bash setup
bash nexphisher
elif [ $pil == "8" ]
then
apt update && apt upgrade -y
apt install git -y
apt install php -y
cd $HOME
git clone https://github.com/Tuhinshubhra/RED_HAWK
cd RED_HAWK
clear
php rhawk.php
elif [ $pil == "exit" ]
then
echo  -e "Thanks for using moon tools, have a nice day!"
sleep 1
exit
elif [ $pil == "clear" ]
then
clear
else
echo -e "Unknown commands!"
sleep 1
bash moon.sh
fi
