#!/bin/bash

echo "Please enter the number"
read NUMBER

if [ "$is_prime" -eq 1 ]; then
  echo "$num is a prime number."
else
  echo "$num is not a prime number."
fi
