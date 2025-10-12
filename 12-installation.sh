#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
   echo "ERROR:: Please run this script with root privelege"
   exit 1 #failure is other then 0

   fi

   dnf istall mysql -y

   if [ $? -ne 0 ]; then
     echo "ERROR:: INSTALLING MYSQL is failure"
     exit 1
else
    echo "Installing MYSQL is SUCCESS"
    
    fi
