#!/bin/bash
echo
echo               "****************sed statements******************"
echo
 grep -wr 'sed.-*' /home/student/scripts/portfolio

echo "$REPLY"


echo "***************All lines that start with m*************"

echo
b=$(cat newtext.txt | grep -r '^m' )

echo "$b"
echo
echo " ***********All lines that contain 3 digit number******"
c=$(grep -E '\b[0-9]{3}\b' newtext.txt) 
echo
echo "$c"