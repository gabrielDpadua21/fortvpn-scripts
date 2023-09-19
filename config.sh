#!/bin/bash

main() {
    echo "Config Tamplate OpenFortVPN"

    read -p "Enter your username: " username

    read -p "Enter your password: " password
    
    read -p "Enter your server: " server
    
    read -p "Enter your port: " port

    cert=5b2095a31bfd88e975326bfd3ef71edf92e8b2c356f31ca2b173bfafdea9d4ec

    [ -e config.tamplate ] && rm config.tamplate

    touch config.tamplate

    echo "username=$username" >> config.tamplate
    echo "password=$password" >> config.tamplate
    echo "host=$server" >> config.tamplate
    echo "port=$port" >> config.tamplate
    echo "trusted-cert=$cert" >> config.tamplate 

    sudo mv /usr/share/openfortivpn/config.template /usr/share/openfortivpn/config.template.bkp

    sudo cp config.tamplate /usr/share/openfortivpn/config.template
}

main