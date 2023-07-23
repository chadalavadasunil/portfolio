#!/bin/bash

hashed_password=$(cat password_hash.txt)

read -sp "Enter your password: " user_password
echo

if echo "$user_password" | openssl passwd -1 -stdin -salt "$hashed_password" -in <(echo -n "$hashed_password") | grep -q "$hashed_password"; then
    echo "Password is correct."
else
   echo "Password is incorrect."
fi
