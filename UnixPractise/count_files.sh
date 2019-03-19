#!/bin/bash

#count no. files in directory


#echo `ls -lt` | type -f | wc -l 
cd /Users/1242070/UnixPractise/dir1

files=`ls -l  | grep ^- | wc -l`
echo "files"$files

dires=`ls -1 | grep ^d | wc -l`
echo "Directories"$dires

links=`ls -1 | grep ^l | wc -l` 
echo "links"$links


echo -e "fil="$files"\ndir="$dires"\nlin="$links > total_count


echo "filename= "$0

echo $?
