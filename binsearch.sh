#!/bin/bash

clear

echo
echo -e """\e[1;37m	██████╗ ██╗███╗   ██╗    ███████╗███████╗ █████╗ ██████╗  ██████╗██╗  ██╗
	██╔══██╗██║████╗  ██║    ██╔════╝██╔════╝██╔══██╗██╔══██╗██╔════╝██║  ██║
	██████╔╝██║██╔██╗ ██║    ███████╗█████╗  ███████║██████╔╝██║     ███████║
	██╔══██╗██║██║╚██╗██║    ╚════██║██╔══╝  ██╔══██║██╔══██╗██║     ██╔══██║
	██████╔╝██║██║ ╚████║    ███████║███████╗██║  ██║██║  ██║╚██████╗██║  ██║
	╚═════╝ ╚═╝╚═╝  ╚═══╝    ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝
"""
echo -e "\e[1;34m                               Created by github.com/Eltotiz"


echo
echo "   [!] El exceso de peticiones puede parar al programa por segundos."
echo
echo

echo -n "  Inserte la cantidad de BINs que desea buscar # "
read cantidad

clear

echo
echo -e """\e[1;37m	██████╗ ██╗███╗   ██╗    ███████╗███████╗ █████╗ ██████╗  ██████╗██╗  ██╗
	██╔══██╗██║████╗  ██║    ██╔════╝██╔════╝██╔══██╗██╔══██╗██╔════╝██║  ██║
	██████╔╝██║██╔██╗ ██║    ███████╗█████╗  ███████║██████╔╝██║     ███████║
	██╔══██╗██║██║╚██╗██║    ╚════██║██╔══╝  ██╔══██║██╔══██╗██║     ██╔══██║
	██████╔╝██║██║ ╚████║    ███████║███████╗██║  ██║██║  ██║╚██████╗██║  ██║
	╚═════╝ ╚═╝╚═╝  ╚═══╝    ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝
"""
echo -e "\e[1;34m                               Created by github.com/Eltotiz"

counter=0

while [ $cantidad -ge $counter ]
do
	BIN1=`shuf -i 1111-9999 -n1`
	BIN2=`shuf -i 1111-9999 -n1`
	BIN3=`shuf -i 1111-9999 -n1`
	BIN4=`shuf -i 1111-9999 -n1`
	echo
	echo "      $BIN1 $BIN2 $BIN3 $BIN4"
	echo
	curl -H "Accept-Version: 3" "https://lookup.binlist.net/$BIN1$BIN2$BIN3$BIN4"
	echo
	let counter=$counter+1
done

echo -n "    [!] Presione enter para volver al menu"
read enter
python3 main.py