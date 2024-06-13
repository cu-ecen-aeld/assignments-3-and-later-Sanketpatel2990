#! /bin/sh

if [ $# -lt 2 ]
then
	exit 1
fi

PATH=$1
TEXT=$2
DIRECTORY=${PATH%/*}
FILENAME=${PATH}

if [ ! -d $DIRECTORY ]
then 
	/usr/bin/mkdir -p "$DIRECTORY"
fi

echo "${TEXT}" > "${FILENAME}"
if [ $? -ne 0 ]
then 
	exit 1
else
	exit 0
fi
