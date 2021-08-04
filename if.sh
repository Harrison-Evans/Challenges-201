#!/bin/bash
# Script:                       Challenge : class 6
# Author:                       Harrison Evans
# Date of latest revision:      8/2/21
# Purpose:                      Bash script that detects if a file or directory exists, creates on if not.
#list, one loop, and one conditional
allDirs=(derp merp) 


# Main 
for dir in ${allDirs[@]} #start of for loop
do
if [ ! -d $dir ] #checking the curent dir to see if they are not in the curent directory.
then 
mkdir  $dir # making a dir in the curent directory, if $dir isnt already present.
    echo $dir

fi # ending the if loop
done 
# End
