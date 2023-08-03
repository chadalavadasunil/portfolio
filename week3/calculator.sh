#!/bin/bash

SC='\033[0m'

BLACK='\033[30m'
RED='\033[0;31m'
GREEN='\033[32m'
BROWN='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[36m'
GREY='\033[37m'


# echo -e "${BLACK} black colour.${SC}"
# echo -e "${RED} red colour.${SC}"
# echo -e "${GREEN} green colour.${SC}"
# echo -e "${BROWN} brown colour.${SC}"
# echo -e "${BLUE} blue colour.${SC}"
# echo -e "${PURPLE} purple colour.${SC}"
# echo -e "${CYAN} cyan colour.${SC}"
# echo -e "${GREY} grey colour.${SC}"


i=1

while i=1
do
read -rp "enter operator or type 'q' to quit :" operator
if [ $operator = "q" ];
then
break
fi
if [[ "$operator" == '+' ]] ;
then 
read -rp   $'\033[0;34m enter the first number: ' num1  
read -rp  $'\033[0;34m enter the Second number:' num2
echo -e "${BLUE} THE TOTAL IS "$(("$num1 + $num2"))" ${SC}"
elif [[ "$operator" == '-' ]] ;
then 
read -rp   $'\033[0;32m enter the first number: ' num1  
read -rp  $'\033[0;32m enter the Second number: ' num2
echo -e "${GREEN} THE VALUE IS "$(("$num1 - $num2"))" ${SC}"
elif [[ "$operator" == '*' ]] ;
then
read -rp   $'\033[0;31m enter the first number: ' num1  
read -rp  $'\033[0;31m enter the Second number: ' num2
echo -e "${RED} THE TOTAL IS "$(("$num1 * $num2"))" ${SC}"
elif [[ "$operator" == '*' ]] ;
then
read -rp   $'\033[0;35m enter the first number: ' num1  
read -rp  $'\033[0;35m enter the Second number: ' num2
echo -e "${PURPLE} THE TOTAL IS "$(("$num1 / $num2"))" ${SC}"
else
echo ****pleae enter valid operator******
./calculator.sh
fi
done