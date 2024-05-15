#!/bin/bash
filesdir=$1
searchstr=$2
if [ $# != 2 ]
then
    echo "Wrong number of arguments. It should be directory name and string to find"
    exit 1
fi
if [ ! -d "$1" ]
then
    echo "Directory does not exists"
    exit 1
fi

numberOfFiles=$(find $1 -type f | wc -l)
numberOfMatchingWords=$(grep -Rnw "$1" -e $2 | wc -l )
echo "The number of files are $numberOfFiles and the number of matching lines are $numberOfMatchingWords"
