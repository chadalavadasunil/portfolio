#!/bin/bash

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
