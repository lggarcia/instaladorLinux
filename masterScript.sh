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

if sudo apt list | grep zenity ; 
then
    echo "Ótimo... Zenity já está instalado... Continuando!!!"
else
    sudo apt-get install -y zenity
fi

zenity --info --title="Garcia Explica | Luciano Garcia" --text="Se você gostar, ou isso te ajudar, considere inscrever-se no canal youtube.com/GarciaExplica"   --width=500 --height=50

###########################
#!/bin/bash
BLACK='\033[0;30m'
WHITE='\033[1;37m'
RED='\033[0;31m'
RED_LIGHT='\033[1;31m'
GREEN='\033[0;32m'
GREEN_LIGHT='\033[1;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
BLUE_LIGHT='\033[1;34m'
CYAN='\033[0;36m'
CYAN_LIGHT='\033[1;36m'
YELLOW='\033[1;33m'
PURPLE='\033[0;35m'
PURPLE_LIGHT='\033[1;35m'
GRAY_LIGHT='\033[0;37m'
GRAY_DARK='\033[1;30m'
NC='\033[0m' # No Color
###########################
BANNER="${YELLOW}# ${WHITE}# ${GRAY_LIGHT}# ${GRAY_DARK}# ${BLACK}# ${GRAY_LIGHT}# ${WHITE}# ${RED_LIGHT}# ${RED}# ${RED_LIGHT}# ${ORANGE}# ${GREEN_LIGHT}# ${GREEN}# ${GREEN_LIGHT}# ${CYAN_LIGHT}# ${CYAN}# ${BLUE_LIGHT}# ${BLUE}# ${BLUE_LIGHT}# ${CYAN}# ${CYAN_LIGHT}# ${PURPLE_LIGHT}# ${PURPLE}# ${PURPLE_LIGHT}# ${WHITE}# ${GRAY_LIGHT}# ${GRAY_DARK}# ${BLACK}# ${GRAY_LIGHT}# ${WHITE}# ${YELLOW} #${NC}"

###########################


if nc -zw1 google.com 443 ;
then
    if  grep $USER /etc/sudoers ; 
    then
######################################################################################################################################################################################################

        echo -e "$BANNER"
        echo -e "$BANNER"
        echo -e "$BANNER"
        echo -e "${RED}UPDATE${NC}"
        sudo apt-get update #2>&1 >/dev/null

        echo -e "${RED}UPGRADE${NC}"
        sudo apt-get upgrade -y #2>&1 >/dev/null

        echo -e "${RED}DIST-UPGRADE${NC}"
        sudo apt-get dist-upgrade -y #2>&1 >/dev/null

        echo -e "$BANNER"
        echo -e "$BANNER"
        echo -e "$BANNER"

        echo -e "${BLUE}AUTOREMOVE${NC}"
        sudo apt-get autoremove -y #2>&1 >/dev/null

        echo -e "${BLUE}CLEAN${NC}"
        sudo apt-get clean #2>&1 >/dev/null

        echo -e "${BLUE}AUTOCLEAN${NC}"
        sudo apt-get autoclean -y #2>&1 >/dev/null

        echo -e "$BANNER"
        echo -e "$BANNER"
        echo -e "$BANNER"
######################################################################################################################################################################################################

        zenity --info --title="Script Master" --text="Este Script tem vários utilitários... Se você precisa utilizar somente um, tente rodar o script especifico..."   --width=500 --height=50
        
        ./criadorDeEspelhos.sh

        ./criadorDeUpdates.sh

        ./instaladorDeProgramas.sh

        sudo ./criadorDeChaves.sh

        ./criadorDeAlias.sh

######################################################################################################################################################################################################

        echo -e "$BANNER"
        echo -e "$BANNER"
        echo -e "$BANNER"
        echo -e "${RED}UPDATE${NC}"
        sudo apt-get update #2>&1 >/dev/null

        echo -e "${RED}UPGRADE${NC}"
        sudo apt-get upgrade -y #2>&1 >/dev/null

        echo -e "${RED}DIST-UPGRADE${NC}"
        sudo apt-get dist-upgrade -y #2>&1 >/dev/null

        echo -e "$BANNER"
        echo -e "$BANNER"
        echo -e "$BANNER"

        echo -e "${BLUE}AUTOREMOVE${NC}"
        sudo apt-get autoremove -y #2>&1 >/dev/null

        echo -e "${BLUE}CLEAN${NC}"
        sudo apt-get clean #2>&1 >/dev/null

        echo -e "${BLUE}AUTOCLEAN${NC}"
        sudo apt-get autoclean -y #2>&1 >/dev/null

        echo -e "$BANNER"
        echo -e "$BANNER"
        echo -e "$BANNER"
######################################################################################################################################################################################################

        zenity --question --title="Script Master" --text="Talves seja necessário, ou mesmo prudente reiniciar agora... Deseja fazer isso?"   --width=500 --height=5
        if [[ $? = 0 ]]
        then
            zenity --info --title="Garcia Explica | Luciano Garcia" --text="Se você gostar, ou isso te ajudar, considere inscrever-se no canal youtube.com/GarciaExplica"   --width=500 --height=50
            sudo reboot
        fi
    else
        zenity --info --title="Script Master" --text="Uma grande parte do que este script faz necessita de permissão de super usuario... Você tem? tente o comando no terminal sudo ./masterScript.sh"   --width=500 --height=5
    fi
else
    zenity --info --title="Script Master" --text="Tudo, ou quase tudo o que será feito neste script necessita internet... a sua internet está funcionando? "   --width=500 --height=5
fi
######################################################################################################################################################################################################
