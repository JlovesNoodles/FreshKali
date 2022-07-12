#! /bin/bash
#! /HomeBrewedByChickenN00dles

#Run this script if you have a fresh kali-linux.


cowsay -f dragon "WELCOME TO ONE STOP SHOP OF KALI UPGRADE" | lolcat

function freshkali(){
	echo "Choose what you want to proceed with"
	echo "[P]impMyKali || [K]ali Pentest Essentials || [U]pdate & Upgrade || || [C]lean my Kali [A]ll of kali Tools"

	read choice

	if [[ $choice == "P" || $choice == "p" ]]; then

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

	PimpKali




	elif [[ $choice == "K" || $choice == "k" ]]; then

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
	KaliEssentials


	elif [[ $choice == "U" || $choice == "u" ]]; then

	function KaliUpdate(){

		echo " "
		echo " "
		echo " --------------------------------------"
		echo "[+] Updating your Kali. Sit, Relax, Wait"
		echo " --------------------------------------"
		echo " "
		echo " "

		sudo apt-get update && apt-get full-upgrade -y && apt-get dist-upgrade
		sudo apt autoremove
	}

	KaliUpdate


	elif [[ $choice == "A" || $choice == "a" ]]; then


	function kaliAll(){

		echo " "
		echo " "
		echo " --------------------------------------"
		echo "[+] Installing Everything Sit, Relax, Wait"
		echo " --------------------------------------"
		echo " "
		echo " "
		
		sudo apt install kali-linux-everything 
	
	
	
	}
	kaliAll
	
	elif [[ $choice == "C" || $choice == "c" ]]; then


	function cleankali(){

		echo " "
		echo " "
		echo " --------------------------------------"
		echo "[+] Cleaning Everything Sit, Relax, Wait"
		echo " --------------------------------------"
		echo " "
		echo " "
		
		sudo apt-get clean && apt autoremove -y
	
	
	}
	cleankali
	
	
	
	
	
	

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
	
	




	function rebootthis(){
		echo " "
		echo " "
		echo " ------------------------------------------"
		echo "[+] FINISHED. DO YOU WANNA REBOOT NOW?  [+] "
		echo " "
		echo " "
		echo "[+] [Y]es Please [N]o I'll upgrade more [+] "	
		echo " ------------------------------------------"
		echo " "
		echo " "

		read rebootthis
		if [[ $rebootthis == "Y" || $rebootthis == "y" ]]; then
		sudo reboot now
		elif [[ $rebootthis == "N" || $rebootthis == "n" ]]; then
		freshkali
		
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
	}
	rebootthis

}


freshkali
















