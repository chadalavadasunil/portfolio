#!/bin/bash

line() {
    printf "+----------------------+------------+------------+----------------------------------------------------+\n"
}

print_colored() {
    color="$1"
    text="$2"
    printf "${color}%-${#text}s\033[0m" "$text"
}

printf "\n"
line
printf "| $(print_colored '\033[34m' "Username")             | $(print_colored '\033[34m' "User ID")    | $(print_colored '\033[34m' "Group ID")   | $(print_colored '\033[34m' "Home Directory")                                     |\n"
line

awk -F: '
BEGIN {
    OFS=" | "
}
{
    printf "| \033[31m%-20s\033[00m | %-10s | %-10s | %-50s |\n", $1, $3, $4, $6
}
END {


    printf "+----------------------+------------+------------+----------------------------------------------------+\n"

}' /etc/passwd

printf "\n"
