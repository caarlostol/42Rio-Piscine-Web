#!/bin/bash

# Check if no arguments were passed
if [ $# -eq 0 ]
then
    echo "No arguments passed."
    exit 1
fi

# Initialize a counter
count=0

# Loop through the arguments and display them with count
for arg in "$@"
do
    count=$((count + 1))
    echo "Argument $count: $arg"
    
    # Break the loop if maximum count (3) is reached
    if [ $count -eq 3 ]
    then
        break
    fi
done

# Display total count of arguments
echo "Total arguments passed: $count"

