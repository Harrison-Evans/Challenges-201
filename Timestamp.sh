#!/bin/bash
# Script:                       Challenge 1 301
# Author:                       Harrison Evans
# Date of latest revision:      8/31/21
# Purpose:                      append; date and time
# Variables
timestamp=$(date +%s)


cp -r /var/log/syslog /home/harrison/Desktop


cd /home/harrison/Desktop/


mv syslog syslog"$(date +"%Y%m%d%T")"

echo "Completed $date"

# End
