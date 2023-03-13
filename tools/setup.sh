#!/bin/bash

node=$1

main="https://raw.githubusercontent.com/DOUBLE-TOP/tools/main/main.sh"
monitoring="https://raw.githubusercontent.com/DOUBLE-TOP/tools/main/monitoring/monitor.sh"
docker="https://raw.githubusercontent.com/DOUBLE-TOP/tools/main/docker.sh"
rust="https://raw.githubusercontent.com/DOUBLE-TOP/tools/main/rust.sh"
go="https://raw.githubusercontent.com/DOUBLE-TOP/tools/main/go.sh"
nodejs="https://raw.githubusercontent.com/DOUBLE-TOP/tools/main/node.sh"
proxy="https://raw.githubusercontent.com/DOUBLE-TOP/tools/main/3proxy.sh"

confirm=$(dialog --stdout --yesno "Do you want to install $node with option $option?" 0 0)
# Show the main menu
if [ "$2" = "main" ]; then
    if [ "$confirm" = "0" ]; then
        . <(wget -qO- $main)
        dialog --title "Installation complete" --msgbox "The installation of $node with option $option was successful!" 0 0
    fi
elif [ "$2" = "monitoring" ]; then
    if [ "$confirm" = "0" ]; then
        OWNER=$(dialog --inputbox "Enter telegram username without @:" 0 0 "John" --stdout)
        HOSTNAME=$(dialog --inputbox "Enter server name without special symbols:" 0 0 "server" --stdout)
        . <(wget -qO- $monitoring)
        dialog --title "Installation complete" --msgbox "The installation of $node with option $option was successful!" 0 0
    fi
elif [ "$2" = "docker" ]; then
    if [ "$confirm" = "0" ]; then
        . <(wget -qO- $docker)
        dialog --title "Installation complete" --msgbox "The installation of $node with option $option was successful!" 0 0
    fi
elif [ "$2" = "rust" ]; then
    if [ "$confirm" = "0" ]; then
        . <(wget -qO- $rust)
        dialog --title "Installation complete" --msgbox "The installation of $node with option $option was successful!" 0 0
    fi
elif [ "$2" = "go" ]; then
    if [ "$confirm" = "0" ]; then
        . <(wget -qO- $go)
        dialog --title "Installation complete" --msgbox "The installation of $node with option $option was successful!" 0 0
    fi
elif [ "$2" = "nodejs" ]; then
    if [ "$confirm" = "0" ]; then
        . <(wget -qO- $nodejs)
        dialog --title "Installation complete" --msgbox "The installation of $node with option $option was successful!" 0 0
    fi
elif [ "$2" = "proxy" ]; then
    if [ "$confirm" = "0" ]; then
        . <(wget -qO- $proxy)
        dialog --title "Installation complete" --msgbox "The installation of $node with option $option was successful!" 0 0
    fi
else
    dialog --title "Installation cancelled" --msgbox "The installation was cancelled." 0 0
fi