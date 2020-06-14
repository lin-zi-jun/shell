#!/bin/bash
echo "uniq---------------------------"
time ls  /bin /usr/bin | sort -nr | uniq -d | head -10