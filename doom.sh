#!/bin/bash

# Cores
vermelho="\e[31m"
azul="\e[34m"
reset="\e[0m"

while true; do
    clear
    echo -e "${azul}Doom - Pacote de Ferramentas${reset}"
    echo "Selecione uma categoria:"
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
                    echo "Instalando MaxPhisher..."
                    git clone https://github.com/KasRoudra/MaxPhisher.git
                    cd MaxPhisher && bash maxphisher.sh
                    cd ..
                    ;;
                2)
                    echo "Instalando Zphisher..."
                    git clone https://github.com/htr-tech/zphisher.git
                    cd zphisher && bash zphisher.sh
                    cd ..
                    ;;
                *) echo "Opção inválida!" ;;
            esac
            ;;
        
        2)  # Força Bruta & Exploits
            echo "Selecionado: Força Bruta & Exploits"
            echo "1) Hydra"
            echo "2) Metasploit"
            echo "3) A-Rat (RAT para Android)"
            read -p "Escolha uma ferramenta: " escolha
            case $escolha in
                1)
                    echo "Instalando Hydra..."
                    pkg install hydra -y
                    read -p "Digite o alvo e o tipo de ataque: " alvo tipo
                    hydra "$alvo" "$tipo"
                    ;;
                2)
                    echo "Instalando Metasploit..."
                    pkg install unstable-repo && pkg install metasploit -y
                    msfconsole
                    ;;
                3)
                    echo "Instalando A-Rat..."
                    git clone https://github.com/Xi4u7/A-Rat.git
                    cd A-Rat && python2 A-Rat.py
                    cd ..
                    ;;
                *) echo "Opção inválida!" ;;
            esac
            ;;

        3)  # Consultas e Informações
            echo "Selecionado: Consultas e Informações"
            echo "1) Consultas v3"
            echo "2) SpiderBot"
            echo "3) Phonesploit (Controle Android via ADB)"
            read -p "Escolha uma ferramenta: " escolha
            case $escolha in
                1)
                    echo "Instalando Consultas v3..."
                    git clone https://github.com/Marwan-0x0/consultas-v3.git
                    cd consultas-v3 && python3 consultas.py
                    cd ..
                    ;;
                2)
                    echo "Instalando SpiderBot..."
                    git clone https://github.com/Adriankp/SpiderBot.git
                    cd SpiderBot && python3 spider.py
                    cd ..
                    ;;
                3)
                    echo "Instalando Phonesploit..."
                    git clone https://github.com/UndeadSec/PhoneSploit.git
                    cd PhoneSploit && python3 phonesploit.py
                    cd ..
                    ;;
                *) echo "Opção inválida!" ;;
            esac
            ;;

        4)  # Hacking de Redes
            echo "Selecionado: Hacking de Redes"
            echo "1) Wi-Fi Cracker"
            read -p "Escolha uma ferramenta: " escolha
            case $escolha in
                1)
                    echo "Instalando Wi-Fi Cracker..."
                    git clone https://github.com/esc0rtd3w/wifi-hacker.git
                    cd wifi-hacker && python2 wifi-hacker.py
                    cd ..
                    ;;
                *) echo "Opção inválida!" ;;
            esac
            ;;

        5)  # Engenharia Social
            echo "Selecionado: Engenharia Social"
            echo "1) Social-Engineer Toolkit (SET)"
            read -p "Escolha uma ferramenta: " escolha
            case $escolha in
                1)
                    echo "Instalando SET..."
                    git clone https://github.com/trustedsec/social-engineer-toolkit.git
                    cd social-engineer-toolkit && python3 setup.py
                    ;;
                *) echo "Opção inválida!" ;;
            esac
            ;;

        6)  # SQL Injection & Web Hacking
            echo "Selecionado: SQL Injection & Web Hacking"
            echo "1) Sqlmap"
            echo "2) XSStrike (Cross-Site Scripting Scanner)"
            echo "3) Websploit"
            read -p "Escolha uma ferramenta: " escolha
            case $escolha in
                1)
                    echo "Instalando Sqlmap..."
                    git clone https://github.com/sqlmapproject/sqlmap.git
                    cd sqlmap && python3 sqlmap.py
                    cd ..
                    ;;
                2)
                    echo "Instalando XSStrike..."
                    git clone https://github.com/s0md3v/XSStrike.git
                    cd XSStrike && python3 xsstrike.py
                    cd ..
                    ;;
                3)
                    echo "Instalando Websploit..."
                    pkg install websploit -y
                    websploit
                    ;;
                *) echo "Opção inválida!" ;;
            esac
            ;;

        7)  # Ferramentas Gerais
            echo "Selecionado: Ferramentas Gerais"
            echo "1) Base64 Encode/Decode"
            echo "2) Burp Suite"
            read -p "Escolha uma ferramenta: " escolha
            case $escolha in
                1)
                    read -p "Digite a string para codificar/decodificar: " entrada
                    echo "Codificando..."
                    echo "$entrada" | base64
                    echo "Decodificando..."
                    echo "$entrada" | base64 --decode
                    ;;
                2)
                    echo "Instalando Burp Suite..."
                    pkg install openjdk-17 -y
                    wget https://portswigger.net/burp/releases/download?product=community&version=2023.2.1&type=Jar -O burpsuite.jar
                    java -jar burpsuite.jar
                    ;;
                *) echo "Opção inválida!" ;;
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
