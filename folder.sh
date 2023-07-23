#!/bin/bash
echo "enter the folder name"
read a
mkdir $a
chmod 777 $a 
rmdir   $a
echo " folder is created $a"
exit 0 
