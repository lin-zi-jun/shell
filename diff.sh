#!/bin/bash
echo "f1----------------------------"
cat f1.txt

echo "f2----------------------------"
cat f2.txt
echo "diff------------------------------"
diff f1.txt f2.txt

echo "------------------------------"
diff -c f1.txt f2.txt

echo "------------------------------"
diff -u f1.txt f2.txt

echo "patchdiff---------------------"
diff -Naur f1.txt f2.txt > patchdiff.txt

echo "patch-------------------------"
patch < patchdiff.txt
cp f1.txt f3.txt
patch -R < patchdiff.txt



