#!/bin/bash

cat ./student.txt
echo
cut -f 1,3 -d '-' ./student.txt
echo '----------------------------'
time cut -f 1 -d '-' ./student.txt

echo '----------------------------'

time cut -f 1-3 -d  '-' student.txt 

echo '----------------------------'

cut -f 1 -d '-' student.txt --complement
echo '----------------------------'