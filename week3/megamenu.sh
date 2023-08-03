#!/bin/bash
user_file=$(cat userpassword.txt)
read -rsp "please enter the password" password

 hashpassword=$(echo -n "$password" | sha256sum | awk '{print $1}')
#hashpassword=$(echo -n "$password" | sha256sum )

if [ "$hashpassword" == "$user_file" ];
 then
echo 
 echo "Password is correct"
echo "                       successfully logged in"
echo "       1. create a foler "
echo "       2. copy the folder"
echo "       3. set a password"
echo "       4. calculator"
echo "       5. create a week folder"
echo "       6. check file names"
echo "       7. Download a file"
read  -rp "enter number " number

case  $number in 
1)
	echo " enter the folder name"
read -r fname
mkdir "$fname"
echo " folder created"
;;
3)
echo "Enter the password:"
read  password

chr="${#password}"

if test $chr -ge 5 ; then
    echo "$password" | grep -q [0-9]

    if test $? -eq 0 ; then
    echo "$password" | grep -q [A-Z]

    if test $? -eq 0 ; then
       echo "$password" | grep -q [a-z]
    if test $? -eq 0 ; then
                echo "$password" | grep -q '[$,@,#,%]'
    if test $? -eq 0 ; then
                    echo "Strong password"
                else echo "Weak password, include special chars"
           fi
         else
                echo "Weak password, include lowercase letters"
        fi
     else
           echo "Weak password, include uppercase letters"
      fi
    else
     echo "Weak password, include numbers"
    fi
else
    echo "Weak password, length should be at least 8 characters"
fi
;;
2)
read -p "Type the name of the folder you would like to copy: " folderName

source=./$folderName

cp -a -- "$source" "$source ($(date +"%d-%b-%Y) [%r]")"
;;
4)
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
while  i=1
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
continue
#./calculator.sh
fi
done
;;
5)
#!/bin/bash

#please enter two arugument

if (( $#!=2 )); then

    #error displayt

    echo "Error, provide two numbers" && exit 1

fi


for ((i = $1; i <= $2; i++))

do


    echo "Creating directory number $i"

    mkdir "week $i"

done
;;
6)
input=$1

while IFS= read -r line
do
case $line in
*.sh)
echo "$line that file exisited"
;;
*.jpg)
echo " $line I dont know this file"
;;
*./*)
echo "$line That's directory"
;;
esac
done < "$input"
;;
7)
a=1
while a=1 ;
do
read -rp "please enter url and type quit to exit: " url
if [ $url = "quit" ] ;
then
break 
fi

read -rp "please enter destination to download: " location 

if [ ! -d "$location" ] ;
then
echo " wrong location you entered"
continue 
 fi
wget -P "$location" "$url"

if [ $? = 0 ] ;
then
echo "successfully downloaded"
else
echo "something went wrong"
fi
done
;;
esac
else
echo "wrong password"
exit 0
fi


