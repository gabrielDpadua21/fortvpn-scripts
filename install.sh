#!/bin/bash

main() {
    mkdir ~/.config/scripts-fortvpn
    cp alias.sh ~/.config/scripts-fortvpn/alias.sh

    if [ $SHELL == "/usr/bin/zsh" ] || [ $SHELL == "/bin/zsh" ] 
    then
        echo 'alias fortvpn="bash ~/.config/scripts-fortvpn/alias.sh"' >> ~/.zshrc
    elif [ $SHELL == "bash" ] || [ $SHELL == "/bin/bash" ]
    then
        echo 'alias fortvpn="bash ~/.config/scripts-fortvpn/alias.sh"' >>  ~/.bashrc
    else 
        echo "Shell not suported"
        exit 1
    fi

    echo "Install complete 😁"

    exec $SHELL
}

main