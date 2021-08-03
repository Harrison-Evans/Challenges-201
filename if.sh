#!/bin/bash
# Script:                       Challenge : class 6
# Author:                       Harrison Evans
# Date of latest revision:      8/2/21
# Purpose:                      Bash script that detects if a file or directory exists, creates on if not.
#list, one loop, and one conditional
allDirs=(derp merp) 


# Main 
for dir in ${allDirs[@]}
do
if [ ! -d $dir ] 
then 
mkdir $dir
    echo $dir

fi
done
# End