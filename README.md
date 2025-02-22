Doom - Ferramenta de Testes de Penetração

Bem-vindo ao Doom, uma poderosa ferramenta para testes de penetração e exploração. Este script oferece uma variedade de ferramentas de segurança, incluindo scanners de rede, exploração de vulnerabilidades, phishing e muito mais.

Instalação

Para usar o Doom, siga os passos abaixo:

1. Abra o Termux no seu dispositivo.


2. Instale o nano (editor de texto):

pkg install nano


3. Crie o arquivo doom.sh:

nano doom.sh


4. Cole o código abaixo no arquivo doom.sh:



#!/bin/bash

# Cores
verde="\e[32m"
vermelho="\e[31m"
reset="\e[0m"

echo -e "${verde}██████╗  ██████╗  ██████╗ ███╗   ███╗${reset}"
echo -e "${verde}██╔══██╗██╔═══██╗██╔═══██╗████╗ ████║${reset}"
echo -e "${verde}██║  ██║██║   ██║██║   ██║██╔████╔██║${reset}"
echo -e "${verde}██║  ██║██║   ██║██║   ██║██║╚██╔╝██║${reset}"
echo -e "${verde}██████╔╝╚██████╔╝╚██████╔╝██║ ╚═╝ ██║${reset}"
echo -e "${verde}╚═════╝  ╚═════╝  ╚═════╝ ╚═╝     ╚═╝${reset}"
echo -e "${vermelho}( -_•)︻デ═一${reset}\n"
echo -e "${vermelho}By Dragon Modder${reset}\n"

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
    # (adicione os outros casos do seu script aqui)
    0)
        echo "Saindo..."
        exit 0
        ;;
    *)
        echo "Opção inválida!"
        ;;
esac

chmod +x doom.sh

./doom.sh

5. Salve e saia do editor nano pressionando Ctrl + X, depois Y para salvar e Enter para confirmar.


6. Dê permissão de execução ao script:

chmod +x doom.sh


7. Execute o script:

./doom.sh
