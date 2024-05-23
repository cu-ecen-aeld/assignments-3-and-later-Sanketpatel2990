#! /bin/bash

if [ $# -lt 2 ]
then
	exit 1
fi

echo "arguments: $@"

FILE_NAME=$1
TEXT=$2

echo "${TEXT}" > "${FILE_NAME}"
if [ $? -ne 0 ]
then 
	exit 1
else
	exit 0
fi
