#!/bin/bash

# DESCRIPTION
# Sets host name & computer name

# EXECUTION

read -p "[HOSTNAME] Choose your new hostname: " response
if test "$response" != ""; then
    sudo scutil --set ComputerName "$response"
    sudo scutil --set LocalHostName "$response"
    sudo scutil --set HostName "$response"
fi
echo "hostname set to: $response"
echo ""
