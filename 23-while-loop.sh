#!/bin/bash


# count=5


# echo "Starting countdown..."

# while [ $count -gt 0 ]
# do 
# echo "Time left: $count"
# sleep 1 # pause for 1 second
# count=$((count - 1)) # Decrement the count
# done
# echo "Times up!"


while IFS= read -r line; do

echo "Processing line: $line"

done < 20-script-1.sh