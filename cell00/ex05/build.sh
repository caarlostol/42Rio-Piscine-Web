#!/bin/bash

if [ $# -eq 0 ]
then
    echo "No arguments passed."
    exit 1
fi

for folder_name in "$@"
do
	mkdir "ex$folder_name"
	if [ $? -ne 0 ]
	then
		exit 1
	fi
done
