#!/bin/bash
info1=$(ip address)

address=$(echo "$info1" | sed -e ' /eth0/ { 
    s/inet/ip-address:/
    s/tglobal/\nuniversal/p
   }')


echo "this is network stuff   
      $address"