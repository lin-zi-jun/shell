#!/bin/bash
echo "uniq---------------------------"
time ls  /bin /usr/bin | sort -nr | uniq -d | head -10

echo " -c -f -w----------------------"

time sort -k 4.1n,4.1n student.txt 
#| uniq -c -f 3 -w 2