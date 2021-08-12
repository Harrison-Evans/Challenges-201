#!/bin/bash
# Script:                       challenge7
# Author:                       harrison evans
# Date of latest revision:      8/3/21
# Purpose:                      bash script that uses lshw

#cpu
#ram
#display
#network adapter

#lshw

echo Whats upder the hood?
# grep --help
# lshw --help
# -E patterns are extended regular expressions
echo cpu
sudo lshw -class cpu | grep -E 'product:|size|vendor|physicalid|width'
echo memory
sudo lshw -class memory | grep -E 'description:|physicalid|size'
echo display
sudo lshw -class display | grep -E 'description:|vendor|physicalid|businfo|width|clock|capabilities|configuration|resourcesm1'
echo network
sudo lshw -class network | grep -E 'description:|product|vendor|physicalid|businfo'
#sudo lshw -class
#messing around with m1 and tried some -B but got late and needed to turn in, this one is cool. Zzz time!

# End
