#!/bin/bash


# Script Name                     Array no.1
# Author                        Harrison Evans  
# Date of last revision         7/29/2021   
# Description of purpose        make/test arrays


# variables 
mkdir dir1 dir2 dir3 dir4
creations=("/home/harrison/challenge/dir1" "/home/harrison/challenge/dir2" "/home/harrison/challenge/dir3" "/home/harrison/challenge/dir4")
       


for directories in "${creations[@]}"
do
    touch ${directories}/new.txt
done