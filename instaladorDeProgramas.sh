#!/bin/bash
###########################################################
#  CRIADO POR LUCIANO GARCIA                              #
#  PARA MAIS DUVIDAS VISITE:                              #
#  YOUTUBE.COM/GARCIAEXPLICA                              #
#  GARCIAEXPLICA.DDNS.ME                                  #
#  LUCIANOGARCIA.DDNS.ME                                  #
#  LUCIANOG.GARCIA@ĦOTMAIL.COM                            #
#                                                         #
#  ESTE SCRIPT NAO TEM ABSOLUTAMENTE NENHUMA GARATINA     #
#  USE POR SUA CONTA E RISCO                              #
#                                                         #
#  POR FAVOR, MODIFIQUE, MELHORE E COMPARTILHE...         #
#  SO PEÇO QUE NAO RETIRE MINHA AUTORIA,                  #
#  CASO SUA OBRA DE ARTE SEJA BASEADA NA MINHA...         #
###########################################################

zenity --info --title="Instalador de Programas" --text="Os seguintes programas serão instalados no final (caso selecionado) por não utilizar o APT: Drivers da Nvidia, Chrome, Ranger, Brave browser, Steam, LogiOps"   --width=500 --height=200

programas=$(zenity --list \
                    --title="Instalador de Programas" \
                    --height=800 \
                    --width=150 \
                    --ok-label="Pronto" \
                    --cancel-label="Cancelar" \
                    --text="Selecciona os programas para instalar com APT:" \
                    --checklist \
                    --column="" \
                    --column="programas" \
                    1 "bluefish" 2 "gcc" 3 "libreoffice" 4 "pdfmod" 5 "gimp" 6 "dia" 7 "inkscape" 8 "fritzing" 9 "filezilla" 10 "higan" 11 "mupen64plus-qt" 12 "pcsxr" 13 "soundkonverter" 14 "sound-juicer" 15 "arduino" \
                    16 "ogmrip" 17 "audacity" 18 "audacious" 19 "kdenlive" 20 "k3b" 21 "handbrake" 22 "vlc" 23 "gparted" 24 "python3" 25 "python3-pip" 26 "lm-sensors" 27 "torbrowser-launcher" 28 "apt-transport-https" \
                    29 "exfat-fuse" 30 "exfat-utils" 31 "ntfs-3g" 32 "hddtemp" 33 "nvme-cli" 34 "lsb-release" 35 "curl" 36 "grub-customizer" 37 "hollywood" 38 "cmake" 39 "cmatrix" 40 "ncdu" 41 "htop" 42 "make" \
                    43 "winetricks" 44 "wine64" 45 "wine" 46 "obs-studio" 47 "unison" 48 "unison-gtk" 49 "gnome-disk-utility" 50 "p7zip-full" 51 "git")
                    
if [ $? == 0 ]
then
    zenity --info --title="Instalador de Programas" --text="Selecionado:"$programas   --width=500 --height=50
    programas=$(sed 's/|/ /g' <<< $programas)
    sudo apt-get install -y $apps
    touch log.txt
    echo "programas instalados:" >> log.txt
    echo $programas >> log.txt
else
    zenity --info --title="Instalador de Programas" --text="Nada Selecionado..."   --width=500 --height=50
fi

zenity --question --title="Instalador de Programas" --text="Algum programa faltou ?"   --width=500 --height=50
if [[ $? == 0 ]] 
then 
    nome=$(zenity --entry --title="Instalador de Programas" --text="Digite o nome do programa"--width=500 --height=50  --ok-label="Pronto" --cancel-label="Cancela")
    sudo apt-get install -y $nome
    zenity --question --title="Instalador de Programas" --text="Mais algum?"   --width=500 --height=50
    while [[ $? == 0 ]] 
    do 
        nome=$(zenity --entry --title="Instalador de Programas" --text="Digite o nome do programa"--width=500 --height=50  --ok-label="Pronto" --cancel-label="Cancela")
        sudo apt-get install -y $nome
        zenity --question --title="Instalador de Programas" --text="Mais algum?"   --width=500 --height=50
    done
fi

zenity --question --title="Instalador de Programas" --text="Instalar Drivers da Nvidia"   --width=500 --height=50
if [[ $? == 0 ]] 
then
    sudo apt install linux-headers-amd64 -y
    sudo apt install nvidia-driver firmware-misc-nonfree -y
fi

zenity --question --title="Instalador de Programas" --text="Instalar Google Chrome?"   --width=500 --height=50
if [[ $? == 0 ]] 
then
    cd ~
    cd Downloads
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i google-chrome-stable_current_amd64.deb
    sudo apt install -f
fi

zenity --question --title="Instalador de Programas" --text="Instalar Brave Browser"   --width=500 --height=50
if [[ $? == 0 ]] 
then
    sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
    echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
    sudo apt update && sudo apt install -y brave-browser
fi

zenity --question --title="Instalador de Programas" --text="Instalar Ranger"   --width=500 --height=50
if [[ $? == 0 ]] 
then
    cd Downloads/
    wget https://ranger.github.io/ranger-stable.tar.gz
    sudo tar -xvsf ranger-stable.tar.gz  
    cd ranger-1.9.3/
    sudo make install
    cd ..
    sudo rm -rf ranger*
fi

zenity --question --title="Instalador de Programas" --text="Instalar Steam"   --width=500 --height=50
if [[ $? == 0 ]] 
then
    sudo dpkg --add-architecture i386
    sudo apt update
    sudo apt install steam

    sudo apt install nvidia-driver-libs-i386
    sudo apt install -y libgl1-mesa-dri:i386 libgl1:i386 libgl1-mesa-glx:i386
    sudo apt install libgl1-mesa-dri:i386 libgl1:i386
    sudo apt install nvidia-driver-libs:i386
    sudo apt-get upgrade steam -f
fi

zenity --question --title="Instalador de Programas" --text="Instalar LogiOps"   --width=500 --height=50
if [[ $? == 0 ]] 
then
        git clone https://github.com/PixlOne/logiops
        cd logiops/
        mkdir build
        cd build/
        sudo apt -y install pkg-config libevdev2 libevdev-dev libconfig libconfig9 libconfig-dev libudev-dev ibconfig++-dev
        sudo make
        sudo make install
        sudo systemctl status logid.service 
        sudo systemctl start logid.service 
        sudo systemctl enable logid.service
        sudo systemctl status logid.service 
        cd ..
        cd ..
        sudo rm -rf logiops/
fi

zenity --info --title="Garcia Explica | Luciano Garcia" --text="Gostou ? Considere inscrever-se no canal youtube.com/GarciaExplica"   --width=500 --height=50
