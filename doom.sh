#!/bin/bash

# Definindo cores
verde="\e[32m"
vermelho="\e[31m"
reset="\e[0m"

# Exibição do logo
echo -e "${verde}██████╗  ██████╗  ██████╗ ███╗   ███╗${reset}"
echo -e "${verde}██╔══██╗██╔═══██╗██╔═══██╗████╗ ████║${reset}"
echo -e "${verde}██║  ██║██║   ██║██║   ██║██╔████╔██║${reset}"
echo -e "${verde}██║  ██║██║   ██║██║   ██║██║╚██╔╝██║${reset}"
echo -e "${verde}██████╔╝╚██████╔╝╚██████╔╝██║ ╚═╝ ██║${reset}"
echo -e "${verde}╚═════╝  ╚═════╝  ╚═════╝ ╚═╝     ╚═╝${reset}"
echo -e "${vermelho}( -_•)︻デ═一${reset}\n"
echo -e "${vermelho}By Dragon Modder${reset}\n"

# Menu para o usuário escolher a ferramenta
echo "Escolha uma ferramenta para executar:"
echo "1 - Nmap (Scanner de rede)"
echo "2 - Sherlock (Busca de perfis sociais)"
echo "3 - TBomb (Spam de SMS/Chamadas)"
echo "4 - Red Hawk (Scanner de sites)"
echo "5 - Maxphisher (Phishing)"
echo "6 - Hydra (Ataques de força bruta)"
echo "7 - Metasploit (Exploração de vulnerabilidades)"
echo "8 - Consultas v3 (Consultas de dados)"
echo "9 - SpiderBot (Rastrear sites)"
echo "10 - A-Rat (Exploração de RAT)"
echo "11 - Phonesploit (Exploração de dispositivos móveis)"
echo "12 - Codificação e Decodificação Base64"
echo "13 - Wi-Fi Cracker (Quebra de senhas Wi-Fi)"
echo "0 - Sair"

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
    0)
        echo "Saindo..."
        exit 0
        ;;
    *)
        echo "Opção inválida!"
        ;;
esac