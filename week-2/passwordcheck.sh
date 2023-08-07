#!/bin/bash
stored_hash=$(cat password_hash.txt)
# Prompt the user for  password :password is sunil
read -r -s -p "Enter your password: " user_password
echo
# SHA-256 check 
hashed_user_password=$(printf '%s' "$user_password" | sha256sum | awk '{print $1}')

# Check if the entered password matches the stored hash
if [ "$hashed_user_password" == "$stored_hash" ]; then
    echo "Access Granted"
    exit 0
else
    echo "Access denied"
    exit 1
fi

