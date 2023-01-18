#!/usr/bin/python
# coding=utf-8
# Created by github.com/Eltotiz

import os
from colorama import Fore, init, Style

os.system("clear")

print("")
print(Fore.WHITE + """	██████╗ ██╗███╗   ██╗    ███╗   ███╗ █████╗ ██████╗ 
	██╔══██╗██║████╗  ██║    ████╗ ████║██╔══██╗██╔══██╗
	██████╔╝██║██╔██╗ ██║    ██╔████╔██║███████║██████╔╝
	██╔══██╗██║██║╚██╗██║    ██║╚██╔╝██║██╔══██║██╔═══╝ 
	██████╔╝██║██║ ╚████║    ██║ ╚═╝ ██║██║  ██║██║     
	╚═════╝ ╚═╝╚═╝  ╚═══╝    ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝     
""")
print("")
print(Fore.BLUE + "		Created by github.com/Eltotiz")
print("""
    [1] BIN Scan       [2] BIN Force Brute

    [99] Exit

    """)

eligio=input("    -BIN MAP # ")


if eligio=="1":
	os.system("clear")

	os.system("bash bineye.sh")
elif eligio=="2":
	os.system("clear")
	os.system("bash binsearch.sh")
elif eligio=="99":
    os.system("clear")
    print("")
    print("     ¡Gracias por usar nuestra herramienta!")
    print("")
    print("")

else:
	print("")
	print("Opción no válida")
	print("")
	input("[!] Pulsa enter para volver al menu")
	print("")
	os.system("python3 main.py")
