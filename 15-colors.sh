#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]; then
   echo "ERROR:: Please run this script with root privelege"
   exit 1 # failure is other then 0

   fi
VALIDATE(){

   if [ $1 -ne 0 ]; then
     echo -e "INSTALLING $2 ... $R is failure $N"
     exit 1
else
    echo -e "Installing $2 ... $G SUCCESS $N"

    fi
}

dnf list installed mysql
# Install if it is not found

if [ $? -ne 0 ]; then

dnf install nginx -y
VALIDATE $? "MySQL"

dnf install nginx -y
VALIDATE $? "Nginx"

dnf install python3 -y
VALIDATE $? "python3"
