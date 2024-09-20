#!/usr/bin/env sh

hostnames=("thinkpad" "main")

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    echo "./setup.sh <hostname>"
    exit
fi

if ! [[ "${hostnames[@]}" =~ "$1" ]]; then
    echo "Hostname not found"
    exit
fi

if [ -L ./doom/default-config.el ]; then
    rm ./doom/default-config.el
fi

if [ "$1" == hostnames[0] ]; then
    ln -s ./doom/thinkpad-config.el ./doom/default-config.el
elif [ "$1" == hostnames[1] ]; then
         ln -s ./doom/main-config.el ./doom/default-config.el
fi

if ! [ -e ../.zshrc ] || [ -L ../.zshrc ]; then
    ln .zshrc ../.zshrc
fi
echo "Done"
