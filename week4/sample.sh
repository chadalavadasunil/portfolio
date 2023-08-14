#!/bin/bash

function hello {

local aname=$1

echo "hello you $aname"

}
read -p "name:"
hello "sunil"
echo "$aname"