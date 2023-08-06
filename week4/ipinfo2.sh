#!/bin/bash 
      
#get info about networking from the ifconfig command 
      
net_info="$(ip address)" 
      
#parse out the ip address lines using sed 
      
addresses=$(echo "$net_info" | sed -n '/inet / { 
      
s/inet/\t\IP Address:/ 
      
s/netmask/\n\t\t\t\t\tSubnet Mask:/ 
      
s/brd/\n\tBroadcast Address:/ 
      
p 
      
}') 
      
#format output 
      
echo -e "IP addresses on this computer are:\n$addresses" 
     
					