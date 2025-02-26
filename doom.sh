#!/bin/bash

while true; do
    clear
    echo "██████╗  ██████╗  ███╗   ███╗"
    echo "██╔══██╗██╔═══██╗████╗ ████║"
    echo "██║  ██║██║   ██║██╔████╔██║"
    echo "██║  ██║██║   ██║██║╚██╔╝██║"
    echo "██████╔╝╚██████╔╝██║ ╚═╝ ██║"
    echo "╚═════╝  ╚═════╝ ╚═╝     ╚═╝"
    echo "Doom - Pacote de Ferramentas"
    echo "By Dragon Modder"
    echo "-----------------------------------------"
    echo "1) Phishing"
    echo "2) Força Bruta & Exploits"
    echo "3) Consultas & Informações"
    echo "4) Hacking de Redes"
    echo "5) Engenharia Social"
    echo "6) SQL Injection & Web Hacking"
    echo "7) Ataques DDoS"
    echo "8) Ferramentas Gerais"
    echo "9) Criptografia & Ofuscação"
    echo "0) Sair"
    read -p "Escolha uma opção: " opcao

    case $opcao in
        1)  # Phishing
            echo "1) MaxPhisher"
            echo "2) Zphisher"
            read -p "Escolha: " escolha
            case $escolha in
                1) git clone https://github.com/KasRoudra/MaxPhisher.git && cd MaxPhisher && bash maxphisher.sh ;;
                2) git clone https://github.com/htr-tech/zphisher.git && cd zphisher && bash zphisher.sh ;;
            esac
            ;;

        2)  # Força Bruta & Exploits
            echo "1) Hydra"
            echo "2) Metasploit"
            echo "3) A-Rat"
            read -p "Escolha: " escolha
            case $escolha in
                1) pkg install hydra -y ;;
                2) pkg install unstable-repo && pkg install metasploit -y && msfconsole ;;
                3) git clone https://github.com/Xi4u7/A-Rat.git && cd A-Rat && python2 A-Rat.py ;;
            esac
            ;;

        3)  # Consultas & Informações
            echo "1) Consultas v3"
            echo "2) SpiderBot"
            echo "3) Sherlock (Busca Redes Sociais)"
            read -p "Escolha: " escolha
            case $escolha in
                1) git clone https://github.com/Marwan-0x0/consultas-v3.git && cd consultas-v3 && python3 consultas.py ;;
                2) git clone https://github.com/Adriankp/SpiderBot.git && cd SpiderBot && python3 spider.py ;;
                3) git clone https://github.com/sherlock-project/sherlock.git && cd sherlock && python3 sherlock.py ;;
            esac
            ;;

        4)  # Hacking de Redes
            echo "1) Wi-Fi Cracker"
            echo "2) Aircrack-NG"
            echo "3) Wifite"
            echo "4) Routersploit"
            echo "5) Bettercap"
            read -p "Escolha: " escolha
            case $escolha in
                1) git clone https://github.com/esc0rtd3w/wifi-hacker.git && cd wifi-hacker && python2 wifi-hacker.py ;;
                2) pkg install aircrack-ng -y ;;
                3) pkg install wifite -y ;;
                4) git clone https://github.com/threat9/routersploit.git && cd routersploit && pip install -r requirements.txt && python3 rsf.py ;;
                5) pkg install root-repo && pkg install bettercap -y ;;
            esac
            ;;

        5)  # Engenharia Social
            git clone https://github.com/trustedsec/social-engineer-toolkit.git && cd social-engineer-toolkit && python3 setup.py
            ;;

        6)  # SQL Injection & Web Hacking
            echo "1) SQLmap"
            echo "2) Admin Finder"
            echo "3) XSS-Freak"
            read -p "Escolha: " escolha
            case $escolha in
                1) git clone https://github.com/sqlmapproject/sqlmap.git && cd sqlmap && python3 sqlmap.py --help ;;
                2) git clone https://github.com/the-c0d3r/admin-finder.git && cd admin-finder && python2 admin-finder.py ;;
                3) git clone https://github.com/hahwul/xss-freak.git && cd xss-freak && python3 xssfreak.py ;;
            esac
            ;;

        7)  # Ataques DDoS
            echo "1) Hammer"
            echo "2) GoldenEye"
            echo "3) Slowloris"
            read -p "Escolha: " escolha
            case $escolha in
                1) git clone https://github.com/cyweb/hammer.git && cd hammer && python3 hammer.py -s "$alvo" -t 135 ;;
                2) git clone https://github.com/jseidl/GoldenEye.git && cd GoldenEye && python3 goldeneye.py "$alvo" ;;
                3) git clone https://github.com/gkbrk/slowloris.git && cd slowloris && python3 slowloris.py "$alvo" ;;
            esac
            ;;

        8)  # Ferramentas Gerais
            echo "1) Nmap"
            echo "2) TBomb"
            read -p "Escolha: " escolha
            case $escolha in
                1) pkg install nmap -y ;;
                2) git clone https://github.com/TheSpeedX/TBomb.git && cd TBomb && python3 TBomb.py ;;
            esac
            ;;

        9)  # Criptografia & Ofuscação
            read -p "Digite uma string para codificar em Base64: " entrada
            echo "Codificado: $(echo "$entrada" | base64)"
            echo "Decodificado: $(echo "$entrada" | base64 --decode)"
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
