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

zenity --question --title="Instalador de Chaves SSH" --text="O arquivo ssh_config ja foi configurado?"   --width=500 --height=5
if [[ $? = 0 ]]
then
    echo "OK"
else
    sudo echo "IdentityFile ~/.ssh/id_rsa" >> /etc/ssh/ssh_config
    sudo echo "IdentityFile ~/.ssh/id_dsa" >> /etc/ssh/ssh_config
fi

zenity --question --title="Instalador de Chaves SSH" --text="As chaves já foram geradas alguma vez?"   --width=500 --height=5
if [[ $? = 0 ]]
then
    echo "OK"
else
    zenity --info --title="Instalador de Chaves SSH" --text="Gerando chaves SSH"   --width=500 --height=50
    ssh-keygen
    zenity --info --title="Instalador de Chaves SSH" --text="Chaves SSH geradas"   --width=500 --height=50
fi

    while [[ $? == 0 ]] 
    do 
        user=$(zenity --entry --title="Instalador de Chaves SSH" --text="Digite usuario"   --width=500 --height=50)
        IP=$(zenity --entry --title="Instalador de Chaves SSH" --text="Digite IP"   --width=500 --height=50)
        porta=$(zenity --entry --title="Instalador de Chaves SSH" --text="Digite a porta"   --width=500 --height=50)

        ssh-copy-id -p $porta $user@$IP
        
        zenity --question --title="Instalador de Chaves SSH" --text="Mais algum?"   --width=500 --height=50
    done
    
#ssh-copy-id -p 9999 pi@vpnbr1.ddns.me

zenity --info --title="Garcia Explica | Luciano Garcia" --text="Gostou ? Considere inscrever-se no canal youtube.com/GarciaExplica"   --width=500 --height=50
