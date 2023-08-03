-i!/bin/bash

echo "Enter the password:"
sabithA.123
read -rsp  password

len=$"pssword"

if [ "$len" -gt 1 ] ; then
    echo "$password" | grep -q [0-9]
    
     if test $? -eq 0 ; then
         echo "$password" | grep -q [A-Z]

         if test $? -eq 0 ; then
             echo "$password" | grep -q [a-z]

             if test $? -eq 0 ; then
                 echo "$password" | grep -q '[$,@,#,%]'

                 if test $? -eq 0 ; then
                     echo "Strong password"
                     echo "********welcome to menu list"
                     ./menu.sh
                 else
                     echo "Weak password, include special chars"
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

