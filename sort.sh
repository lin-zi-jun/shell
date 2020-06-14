#!/bin/bash
ehco "sort-----------------------------------"
time du -sh /usr/share/* | sort -nr | head -10

echo "ls-------------------------------------"
time ls -lh /usr/share/* | sort -nr -k 5 | head -10 

echo "sort f1.txt----------------------------"
time sort f1.txt
