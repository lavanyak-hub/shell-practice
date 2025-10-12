#!/bin/bash

echo "Please enter the number"
read NUMBER

if [ $(($is_prime)) -eq 1 ]; then
  echo "Given number $NUMBER is a prime number"
else
  echo "Given number $NUMBER is not a prime number"
fi
