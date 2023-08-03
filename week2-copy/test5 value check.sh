#!/bin/bash
#checking the values 
echo " hello welcome to integer check"
read -rp " enter the frist value  " number1
read -rp  " enter the second value " number2
if [ "$number1" -eq  "$number2" ] 
then
echo " both the values are equal"
else
echo " both the values are not equal"
fi
if [ "$number1" -gt "$number2" ] 

then
echo "the value is more than equal"
fi