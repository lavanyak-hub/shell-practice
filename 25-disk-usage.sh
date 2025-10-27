#!/bin/bash

DISK_USAGE=$(df -hT | grep -v Filesystem)
DISK_THRESHOLD=2 # in projects we keep it as 75
IP_ADDRESS=$(curl -s http://169.254.169.254/latest/meta-data/public-ipv4)
MESSAGE=""
while IFS= read -r line
do 
USAGE=$(echo $line | awk '{print $6}' | cut -d "%" -f1)
PARTISION=$(echo $line | awk '{print $7}')
if [ $USAGE -ge $DISK_THRESHOLD ]; then
MESSAGE+="High Usage on $PARTITION: $USAGE % \n"

fi
done <<< $DISK_USAGE

echo -e "Message Body: $MESSAGE"

sh mail.sh "lavanyakotha1999@gmail.com" "High Disk Uasge Alert" "High Disk Usage" "$MESSAGE" "$IP_ADDRESS" "DevOps Team"

# TO_ADDRESS=$1
# SUBJECT=$2
# ALERT_TYPE=$3
# MESSAGE-BODY=$4
# IP_ADDRESS=$5