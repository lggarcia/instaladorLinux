###########################################################
#!/bin/bash                                               #
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
#  POR FAVOR, MODIFIQUE, MELHOR E COMPARTILHE...          #
#  SO PEÇO QUE NAO RETIRE MINHA AUTORIA,                  #
#  CASO SUA OBRA DE ARTE SEJA BASEADA NA MINHA...         #
###########################################################


zenity --question --title="Personalizdor do Grub" --text="Quer personalizar o tema do seu Grub?"   --width=500 --height=5
if [[ $? = 0 ]]
then
    zenity --info --title="Autoria" --text="Este script foi criado por CrisTitusTech." --width=500 --height=50
    cd ~a
    cd Downloads
    git clone https://github.com/ChrisTitusTech/Top-5-Bootloader-Themes
    cd Top-5-Bootloader-Themes
    sudo ./install.sh
fi

zenity --info --title="Garcia Explica | Luciano Garcia" --text="Gostou ? Considere inscrever-se no canal youtube.com/GarciaExplica"   --width=500 --height=50
