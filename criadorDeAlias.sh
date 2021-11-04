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

zenity --info --title="Criador de Alias" --text="Este é um ciador de <span weight=\"bold\" foreground=\"green\">ALIAS</span> para terminal." --width=500 --height=50
zenity --info --title="Criador de Alias" --text="Todos os alias serão adicionados no arquivo <span weight=\"bold\" foreground=\"red\">.bashrc</span> do seu usuário." --width=500 --height=50

nome=$(zenity --entry --title="Criador de Alias" --text="Digite o nome do alias"--width=500 --height=50  --ok-label="Pronto" --cancel-label="Fiz merda")
comando=$(zenity --entry --title="Criador de Alias" --text="Digite o comando" --width=500 --height=50 --ok-label="Pronto" --cancel-label="Fiz merda")

zenity --info --title="Criador de Alias" --text="Feche e abra o terminal para funcionar..." --width=500 --height=50

sudo echo "alias" $nome"=\""$comando"\"" >> ~/.bashrc

zenity --info --title="Garcia Explica | Luciano Garcia" --text="Gostou ? Considere inscrever-se no canal youtube.com/GarciaExplica"   --width=500 --height=50
