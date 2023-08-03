#!/bin/bash
echo "welcome to uv calculator"
read -rp " enter the value between 0 to 10 " number
if [ "$number" -le  2 ] ;
then
echo " $number minimum protection requried"
elif [ "$number" -ge 3 ] && [ "$number" -le 7 ] ;
then
echo "$number Modarate to high(standard)"
elif [ "$number" -ge 8 ] && [ "$number" -le 10 ] ;
then
echo "$number very high uv"
else
echo "enter valid number"
fi

