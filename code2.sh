#! /bin/bash
food=$(ifconfig)
echo "$food"
echo $food > output.txt
# hellowworld.sh
# harrison evans
# 7/27/21
# the purpose is to condence code for what you are after, not all the info from a script
# #! specifies the program to exacute. echo is a command that ouputs the strings it is being passed as arguments.
# > indicates that the enclosed element is mandatory, since its just one, prioritizes the txt.
