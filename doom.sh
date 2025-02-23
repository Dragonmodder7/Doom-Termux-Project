#!/bin/bash

# Definindo cores
vermelho="\e[31m"
azul="\e[34m"
reset="\e[0m"

# Exibição do logo
echo -e "${vermelho}██████╗  ██████╗  ██████╗ ███╗   ███╗${reset}"
echo -e "${vermelho}██╔══██╗██╔═══██╗██╔═══██╗████╗ ████║${reset}"
echo -e "${vermelho}██║  ██║██║   ██║██║   ██║██╔████╔██║${reset}"
echo -e "${vermelho}██║  ██║██║   ██║██║   ██║██║╚██╔╝██║${reset}"
echo -e "${vermelho}██████╔╝╚██████╔╝╚██████╔╝██║ ╚═╝ ██║${reset}"
echo -e "${vermelho}╚═════╝  ╚═════╝  ╚═════╝ ╚═╝     ╚═╝${reset}"
echo -e "${vermelho}( -_•)︻デ═一${reset}\n"
echo -e "${vermelho}By Dragon Modder${reset}\n"

# Menu para o usuário escolher a ferramenta
echo -e "${azul}Escolha uma ferramenta para executar:${reset}"
echo -e "${azul}1 - Nmap (Scanner de rede)${reset}"
echo -e "${azul}2 - Sherlock (Busca de perfis sociais)${reset}"
echo -e "${azul}3 - TBomb (Spam de SMS/Chamadas)${reset}"
echo -e "${azul}4 - Red Hawk (Scanner de sites)${reset}"
echo -e "${azul}5 - Maxphisher (Phishing)${reset}"
echo -e "${azul}6 - Hydra (Ataques de força bruta)${reset}"
echo -e "${azul}7 - Metasploit (Exploração de vulnerabilidades)${reset}"
echo -e "${azul}8 - Consultas v3 (Consultas de dados)${reset}"
echo -e "${azul}9 - SpiderBot (Rastrear sites)${reset}"
echo -e "${azul}10 - A-Rat (Exploração de RAT)${reset}"
echo -e "${azul}11 - Phonesploit (Exploração de dispositivos móveis)${reset}"
echo -e "${azul}12 - Codificação e Decodificação Base64${reset}"
echo -e "${azul}13 - Wi-Fi Cracker (Quebra de senhas Wi-Fi)${reset}"
echo -e "${azul}14 - Social-Engineer Toolkit (Ataques de engenharia social)${reset}"
echo -e "${azul}15 - Burp Suite (Ferramenta de segurança web)${reset}"
echo -e "${azul}16 - About (Informações sobre o criador)${reset}"
echo -e "${azul}0 - Sair${reset}"

# Recebe a opção do usuário
read -p "Opção: " opcao

case $opcao in
    1) 
        echo "Verificando instalação do Nmap..."
        if ! command -v nmap &> /dev/null; then
            pkg install nmap -y
        fi
        read -p "Digite o IP ou site para escanear: " alvo
        nmap -F "$alvo"
        ;;
    2) 
        echo "Verificando instalação do Sherlock..."
        if [ ! -d "sherlock" ]; then
            pkg install git python -y
            git clone https://github.com/sherlock-project/sherlock.git
            cd sherlock && pip install -r requirements.txt
            cd ..
        fi
        read -p "Digite o nome de usuário para buscar: " usuario
        cd sherlock && python3 sherlock "$usuario"
        cd ..
        ;;
    3) 
        echo "Verificando instalação do TBomb..."
        if [ ! -d "TBomb" ]; then
            pkg install git python -y
            git clone https://github.com/TheSpeedX/TBomb.git
            cd TBomb && pip install -r requirements.txt
            cd ..
        fi
        cd TBomb && bash TBomb.sh
        cd ..
        ;;
    4) 
        echo "Verificando instalação do Red Hawk..."
        if [ ! -d "RED_HAWK" ]; then
            pkg install git php -y
            git clone https://github.com/Tuhinshubhra/RED_HAWK.git
        fi
        cd RED_HAWK && php rhawk.php
        cd ..
        ;;
    5) 
        echo "Verificando instalação do Maxphisher..."
        if [ ! -d "MaxPhisher" ]; then
            pkg install git -y
            git clone https://github.com/KasRoudra/MaxPhisher.git
        fi
        cd MaxPhisher && bash maxphisher.sh
        cd ..
        ;;
    6)
        echo "Verificando instalação do Hydra..."
        if [ ! -d "Hydra" ]; then
            pkg install hydra -y
        fi
        read -p "Digite o alvo e o tipo de ataque: " alvo tipo
        hydra "$alvo" "$tipo"
        ;;
    7)
        echo "Verificando instalação do Metasploit..."
        if [ ! -d "metasploit-framework" ]; then
            pkg install unstable-repo
            pkg install metasploit -y
        fi
        msfconsole
        ;;
    8)
        echo "Verificando instalação do Consultas v3..."
        if [ ! -d "consultas-v3" ]; then
            pkg install git python -y
            git clone https://github.com/Marwan-0x0/consultas-v3.git
        fi
        cd consultas-v3 && python3 consultas.py
        cd ..
        ;;
    9)
        echo "Verificando instalação do SpiderBot..."
        if [ ! -d "SpiderBot" ]; then
            pkg install git python -y
            git clone https://github.com/Adriankp/SpiderBot.git
        fi
        cd SpiderBot && python3 spider.py
        cd ..
        ;;
    10)
        echo "Verificando instalação do A-Rat..."
        if [ ! -d "A-Rat" ]; then
            pkg install git python -y
            git clone https://github.com/DaGrande/A-Rat.git
        fi
        cd A-Rat && python3 A-Rat.py
        cd ..
        ;;
    11)
        echo "Verificando instalação do Phonesploit..."
        if [ ! -d "Phonesploit" ]; then
            pkg install git python -y
            git clone https://github.com/UndeadSec/Phonesploit.git
        fi
        cd Phonesploit && python3 phonesploit.py
        cd ..
        ;;
    12)
        echo "Codificando/Decodificando Base64..."
        read -p "Digite a string para codificar/decodificar: " entrada
        echo "Codificando..."
        echo "$entrada" | base64
        echo "Decodificando..."
        echo "$entrada" | base64 --decode
        ;;
    13)
        echo "Verificando instalação do Wi-Fi Cracker..."
        if [ ! -d "Wi-Fi-Cracker" ]; then
            pkg install git python -y
            git clone https://github.com/esc0rtd3w/wifi-hacker.git
        fi
        cd wifi-hacker && python2 wifi-hacker.py
        cd ..
        ;;
    14)
        echo "Verificando instalação do Social-Engineer Toolkit..."
        if [ ! -d "SET" ]; then
            pkg install git python -y
            git clone https://github.com/trustedsec/social-engineer-toolkit.git
        fi
        cd social-engineer-toolkit && python3 setup.py
        ;;
    15)
        echo "Verificando instalação do Burp Suite..."
        if [ ! -d "burp-suite" ]; then
            pkg install openjdk-17 -y
            wget https://portswigger.net/burp/releases/download?product=community&version=2023.2.1&type=Jar -O burpsuite.jar
        fi
        java -jar burpsuite.jar
        ;;
    16)
        echo -e "${vermelho}16 tools${reset}"
        echo -e "${vermelho}By Dragon Modder${reset}"
        echo -e "${azul}YouTube: https://youtube.com/@dragonmoder7?si=DTiMDzmdZ1-tuAQb${reset}"
        ;;
    0)
        echo "Saindo..."
        exit 0
        ;;
    *)
        echo "Opção inválida!"
        ;;
esac
