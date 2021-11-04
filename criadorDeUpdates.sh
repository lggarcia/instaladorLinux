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

texto=' echo update \n sudo apt-get update \n echo upgrade \n sudo apt-get upgrade -y \n echo dist-upgrade \n sudo apt-get dist-upgrade -y \n echo full-upgrade \n sudo apt-get full-upgrade -y \n echo autoremove \n sudo apt-get autoremove -y \n echo clean \n sudo apt-get clean \n echo autoclean \n sudo apt-get autoclean -y'

zenity --question --title="Criador de Updates" --text="Criar arquivo de update automatizado?" --width=300 --height=50
if [[ $? == 0 ]]; then
    cd ~/
    touch update.sh
    echo -e "$texto" > update.sh
    sudo chmod +x update.sh
    zenity --question --title="Criador de Updates" --text="Criar Alias para atualização?" --width=300 --height=50 --ok-label="Boa idéia" --cancel-label="Melhor não"
    if [[ $? == 0 ]]; 
        then
            sudo echo "alias atualizar=\"~update.sh\"" >> ~/.bashrc
            source .bashrc
            zenity --info --title="Criador de Updates" --text="Para utilizar o arquivo, execute-o no terminal com o comando: atualizar"   --width=500 --height=50
        else
            zenity --info --title="Criador de Updates" --text="Para utilizar o arquivo, execute-o no terminal com o comando: ./update.sh"   --width=500 --height=50
    fi
    zenity --info --title="Criador de Updates" --text="Arquivo de update automaztizado criado e colocado na sua pasta HOME." --width=500 --height=50
fi

zenity --info --title="Garcia Explica | Luciano Garcia" --text="Gostou ? Considere inscrever-se no canal youtube.com/GarciaExplica"   --width=500 --height=50
