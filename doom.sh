#!/bin/bash

# Cores
vermelho="\e[31m"
azul="\e[34m"
reset="\e[0m"

while true; do
    clear
    echo -e "${vermelho}"
    echo "██████╗  ██████╗  ███╗   ███╗"
    echo "██╔══██╗██╔═══██╗████╗ ████║"
    echo "██║  ██║██║   ██║██╔████╔██║"
    echo "██║  ██║██║   ██║██║╚██╔╝██║"
    echo "██████╔╝╚██████╔╝██║ ╚═╝ ██║"
    echo "╚═════╝  ╚═════╝ ╚═╝     ╚═╝"
    echo -e "${reset}"
    echo -e "${azul}Doom - Pacote de Ferramentas${reset}"
    echo -e "${vermelho}By Dragon Modder${reset}"
    echo -e "${azul}YouTube: https://youtube.com/@dragonmoder7${reset}"
    echo "-----------------------------------------"

    # Bonequinho atirando estilo Doom
    echo -e "${vermelho}         ,--.   "
    echo -e "       []   |   "
    echo -e "       |  ██████]══╦══>"
    echo -e "       |     |    "
    echo -e "       '-----'    ${reset}"

    echo "-----------------------------------------"
    echo "Selecione uma opção:"
    echo "1) Phishing"
    echo "2) Força Bruta & Exploits"
    echo "3) Consultas e Informações"
    echo "4) Hacking de Redes"
    echo "5) Engenharia Social"
    echo "6) SQL Injection & Web Hacking"
    echo "7) Ferramentas Gerais"
    echo "0) Sair"
    read -p "Escolha uma opção: " opcao

    case $opcao in
        1)  # Phishing
            echo "Selecionado: Phishing"
            echo "1) MaxPhisher"
            echo "2) Zphisher"
            read -p "Escolha uma ferramenta: " escolha
            case $escolha in
                1) 
                    git clone https://github.com/KasRoudra/MaxPhisher.git && cd MaxPhisher && bash maxphisher.sh
                    cd ..
                    ;;
                2)
                    git clone https://github.com/htr-tech/zphisher.git && cd zphisher && bash zphisher.sh
                    cd ..
                    ;;
            esac
            ;;

        2)  # Força Bruta & Exploits
            echo "Selecionado: Força Bruta & Exploits"
            echo "1) Hydra"
            echo "2) Metasploit"
            echo "3) A-Rat"
            read -p "Escolha uma ferramenta: " escolha
            case $escolha in
                1) 
                    pkg install hydra -y
                    ;;
                2) 
                    pkg install unstable-repo && pkg install metasploit -y && msfconsole
                    ;;
                3)
                    git clone https://github.com/Xi4u7/A-Rat.git && cd A-Rat && python2 A-Rat.py
                    cd ..
                    ;;
            esac
            ;;

        3)  # Consultas e Informações
            echo "Selecionado: Consultas e Informações"
            echo "1) Consultas v3"
            echo "2) SpiderBot"
            read -p "Escolha uma ferramenta: " escolha
            case $escolha in
                1)
                    git clone https://github.com/Marwan-0x0/consultas-v3.git && cd consultas-v3 && python3 consultas.py
                    cd ..
                    ;;
                2)
                    git clone https://github.com/Adriankp/SpiderBot.git && cd SpiderBot && python3 spider.py
                    cd ..
                    ;;
            esac
            ;;

        4)  # Hacking de Redes
            echo "Selecionado: Hacking de Redes"
            echo "1) Wi-Fi Cracker"
            echo "2) Aircrack-NG"
            echo "3) Wifite"
            echo "4) Routersploit"
            read -p "Escolha uma ferramenta: " escolha
            case $escolha in
                1)
                    git clone https://github.com/esc0rtd3w/wifi-hacker.git && cd wifi-hacker && python2 wifi-hacker.py
                    cd ..
                    ;;
                2)
                    pkg install aircrack-ng -y
                    ;;
                3)
                    pkg install wifite -y
                    ;;
                4)
                    git clone https://github.com/threat9/routersploit.git && cd routersploit && pip install -r requirements.txt
                    python3 rsf.py
                    cd ..
                    ;;
            esac
            ;;

        5)  # Engenharia Social
            echo "Selecionado: Engenharia Social"
            echo "1) Social-Engineer Toolkit"
            read -p "Escolha uma ferramenta: " escolha
            case $escolha in
                1)
                    git clone https://github.com/trustedsec/social-engineer-toolkit.git && cd social-engineer-toolkit && python3 setup.py
                    ;;
            esac
            ;;

        6)  # SQL Injection & Web Hacking
            echo "Selecionado: SQL Injection & Web Hacking"
            echo "1) SQLmap"
            echo "2) Admin Finder"
            read -p "Escolha uma ferramenta: " escolha
            case $escolha in
                1)
                    git clone https://github.com/sqlmapproject/sqlmap.git && cd sqlmap && python3 sqlmap.py --help
                    cd ..
                    ;;
                2)
                    git clone https://github.com/the-c0d3r/admin-finder.git && cd admin-finder && python2 admin-finder.py
                    cd ..
                    ;;
            esac
            ;;

        7)  # Ferramentas Gerais
            echo "Selecionado: Ferramentas Gerais"
            echo "1) Phonesploit"
            echo "2) Burp Suite"
            read -p "Escolha uma ferramenta: " escolha
            case $escolha in
                1)
                    git clone https://github.com/UndeadSec/Phonesploit.git && cd Phonesploit && python3 phonesploit.py
                    cd ..
                    ;;
                2)
                    pkg install openjdk-17 -y
                    wget https://portswigger.net/burp/releases/download?product=community&version=2023.2.1&type=Jar -O burpsuite.jar
                    java -jar burpsuite.jar
                    ;;
            esac
            ;;

        0)
            echo "Saindo..."
            exit 0
            ;;

        *)
            echo "Opção inválida!"
            ;;
    esac
done
