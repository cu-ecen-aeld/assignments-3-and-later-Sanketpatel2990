#! /bin/bash

if [ $# -lt 2 ]
then
   exit 1
fi

FILEDIR=$1
PATTERN=$2

if [ -d  "$FILEDIR" ]
then
    FILE_COUNT=$(grep -r -l "$PATTERN" "$FILEDIR"  | wc -l)
    WORD_COUNT=$(grep -r -o "$PATTERN" "$FILEDIR" | wc -l)
    echo "The number of files are ${FILE_COUNT} and the number of matching lines are ${WORD_COUNT}"
    exit 0
else 
    exit 1
fi
