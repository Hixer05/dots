#!/usr/bin/env sh
if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    echo "./setup.sh <hostname>"
fi

if ["$1" -eq "thinkpad"]; then
    ln -s ./doom/thinkpad-config.el ./doom/default-config.el
elif ["$1" -eq "main"]; then
         ln -s ./doom/main-config.el ./doom/default-config.el
fi
