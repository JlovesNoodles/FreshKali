#! /bin/bash
#! /HomeBrewedByChickenN00dles

#Run this script if you have a fresh kali-linux.


echo " "
echo " "
echo " -------------------------------------------------"
echo " [+] WELCOME TO ONE STOP SHOP OF KALI UPGRADE [+] "
echo " -------------------------------------------------"
echo " "
echo " "

echo "Choose what you want to proceed with"
echo "[P]impMyKali || [K]ali Pentest Essentials || [U]pdate & Upgrade || [E]verything tools || [M]etasploit Update || [A]ll of kali Tools || [C]omplete pimping"

read choice

if [[ $choice == "P" || $choice == "p" ]]; then
PimpKali
elif [[ $choice == "K" || $choice == "u" ]]; then
KaliEssentials
elif [[ $choice == "U" || $choice == "u" ]]; then
KaliUpdate
elif [[ $choice == "M" || $choice == "m" ]]; then
kaliMSF
elif [[ $choice == "A" || $choice == "a" ]]; then
kaliAll
elif [[ $choice == "C" || $choice == "c" ]]; then 
PimpKali
KaliEssentials
KaliUpdate
kaliMSF
kaliAll
else 
echo " "
echo " "
echo " -----------------------------------------------------"
echo " [+][+][+][+][+] WRONG CHOICE BROTHER [+][+][+][+][+] "
echo " -----------------------------------------------------"
echo " "
echo " "
exit
fi






function PimpKali(){
	echo " "
	echo " "
	echo " --------------------------------------"
	echo "[+] Installing and running Pimp my Kali"
	echo " --------------------------------------"
	echo " "
	echo " "


	cd /opt/
	git clone https://github.com/Dewalt-arch/pimpmykali.git
	cd pimpmykali
	sudo ./pimpmykali.sh
	
}




function KaliEssentials(){

	echo " "
	echo " "
	echo " --------------------------------------"
	echo "[+] Installing Pentest Essential Tolls"
	echo " --------------------------------------"
	echo " "
	echo " "



	cd /opt/
	git clone https://github.com/blindpentester/the-essentials.git
	cd the-essentials
	sudo  ./the_essentials.sh --skip
	
}



function KaliUpdate(){

	echo " "
	echo " "
	echo " --------------------------------------"
	echo "[+] Updating your Kali. Sit, Relax, Wait"
	echo " --------------------------------------"
	echo " "
	echo " "

	sudo apt-get update && apt-get full-upgrade -y
	sudo apt autoremove
}




function kaliMSF(){
	echo " "
	echo " "
	echo " --------------------------------------"
	echo "[+] Updating your MSF. Sit, Relax, Wait"
	echo " --------------------------------------"
	echo " "
	echo " "
	
	sudo msfupdate



}



function kaliAll(){

	echo " "
	echo " "
	echo " --------------------------------------"
	echo "[+] Updating your MSF. Sit, Relax, Wait"
	echo " --------------------------------------"
	echo " "
	echo " "
	
	sudo apt install kali-linux-everything 


}

