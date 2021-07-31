#!/bin/bash
#basic while loop


while true 
do 
ps -aux
echo Enter PID number to end
read varname
kill $varname

done