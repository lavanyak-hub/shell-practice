#!/bin/bash

echo "Please enter the number"
read NUMBER

if [ $(($is_prime)) -eq 1 ]; then
  echo "$NUMBER is a prime number."
else
  echo "$NUMBER is not a prime number."
fi
