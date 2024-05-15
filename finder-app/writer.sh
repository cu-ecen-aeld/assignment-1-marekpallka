#!/bin/bash
writefile=$1
writestr=$2
if [ $# != 2 ]
then
    echo "Wrong number of argumnets."
    exit 1
fi
if [ ! -d $(dirname "$1") ]
then
    echo $(dirname "$1")
    if [ $(mkdir -p $(dirname "$1")) ]
    then	
	echo "can not create directory"
	exit 1
    fi
fi
echo $writestr > $writefile
