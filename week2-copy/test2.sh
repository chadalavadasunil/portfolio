
#!/bin/bash
echo "welcome" 
read -rp "enter the new folder name  :"  name
if  [[ -d $name ]] ; 
then 
	echo -e  "directory already existerd"
			read -rp "would you like to copy the directory :" status
			if  
			       	[[ "$status"  = yes ]] ; 
			then
			cp -r "$name" "/home/student"
			elif [[ $status = no ]]
			then
			echo " copy not created"
			fi
			fi
			if [[ ! -d $name ]];
			then
            date 
			mkdir $name
			echo " $name  directory created"
			fi


