#!/bin/bash

##
function printError()

{
# if [[ $REPLY -lt $3 ]];

# then
# echo -e "Error: $1"
# else
echo -e "\033[41mError:\033[00m $1"
# fi
}


function guessing()
{
read -p "$1"
while (( $REPLY != 42));
do
if [[ $REPLY -ge $2 && $REPLY -le $3 && $REPLY -lt 42 ]];
then
echo      "TOO LOW!"
read -p "$1"

elif [[ $REPLY -gt $2 && $REPLY -le $3 && $REPLY -gt 42 ]];

then

echo "TOO HIGH!"
read -p "$1"
else
printError "INPUT MUST BE BETWEEN 1 AND 100"
read -p "$1"

fi
done 

}

echo "welcome"
guessing "enter the value between 1 and 100 " 1 100
echo "correct number!"
