#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
SOURCE_DIR=$1
DEST_DIR=$2
DAYS=${3:-14} #if not provided consider as 14 days

LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"

mkdir -p $LOGS_FOLDER
echo "script started executed at: $(date)" | tee -a $LOG_FILE

if [ $USERID -ne 0 ]; then
   echo "ERROR:: Please run this script with root privelege"
   exit 1 # failure is other then 0

   fi

USAGE(){

    echo -e "$R USAGE:: sudo sh 24-backup.sh <SOURCE_DIR> <DEST_DIR> <DAYS>[optional, defauld 14 days]"
    exit 1
}
if [ $# -lt 2 ]; then
USAGE
fi

if [ ! -d $SOURCE_DIR ]; then
echo -e "$R source $SOURCE_DIR does not exist $N"
exit 1
fi

if [ ! -d $DEST_DIR ]; then
echo -e "$R destination $DEST_DIR does not exist $N"
exit 
fi

FILES=$(find $SOURCE_DIR -name "*.log" -type f -mtime +14)

if [ -z "${FILES}" ]; then
   echo "Files found"
else
echo "No files to archieive ... $Y SKIPPING $N "

fi
