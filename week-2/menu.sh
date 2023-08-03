#!/bin/bash
stored_hash=$(cat password_hash.txt)
read -s -p "Enter your password: " user_password
echo
 hashed_user_password=$(printf '%s' "$user_password" | sha256sum | awk '{print $1}')

if [ "$hashed_user_password" == "$stored_hash" ]; then
    echo "                 ***Access Granted***"
    echo "menu"
    echo 
    echo "1. Create a folder"
    echo "2. Copy a folder"
    echo "3. Set a password"
    echo

   read  -rp "please enter the option:" number
   
   a=1
   while a=1
   
     case $number in 
	  1)
	
echo "enter the folder name"
read a
mkdir $a
chmod +x $a
echo " folder is created $a"
exit 0
;;
2)
	read -p "type the name of the folder you would like to copy: " folderName

#if the name is a valid directory

if [ -d "$folderName" ]; then

 #copy it to a new location

 read -p "type the name of the destination folder: " newFolderName

 cp -r "$folderName" "$newFolderName"

else

  #otherwise, print an error

 echo "I couldn't find that folder"

fi
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
                    exit 0
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
esac
done

else
    echo "Access denied"
    exit 1
fi

