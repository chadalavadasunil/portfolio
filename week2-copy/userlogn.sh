#!/bin/bash
echo "welcome to login screen"
data=$(cat sunilpwd.txt)
read -rsp "password :"  password
sha256sum  $password >  sunilpwd1.txt
cat sunilpwd1.txt
#data2=$(cat sunilpwd1.txt)
#if test $data -eq $data2 ;
#then
#	echo " granted"
#else
#	echo " not granted"
#	fi
exit 0
