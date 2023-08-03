#!/bin/bash
a=1
while a=1 ;
do
read -rp "please enter url and type quit to exit: " url
if [ $url = "quit" ] ;
then
break 
fi
#####week3= ~/scripts/portfolio/week3/
read -rp "please enter destination to download: " location 
#week3=~/scripts/portfolio/week3
if [ ! -d "$location" ] ;
then
echo " wrong location you entered"
continue 
 fi
wget -P "$location" "$url"
#echo "successfully downloaded"

if [ $? = 0 ] ;
then
echo "successfully downloaded"
else
echo "something went wrong"
fi
done