# #!/bin/bash
# while  read LINE
# do 
# echo " $LINE that file exsists"
# done < filenames.txt



#!/bin/bash
input=$1
while IFS= read -r line
do
case $line in
*.sh)
echo "$line that file exisited"
;;
*.jpg)
echo " $line I dont know this file"
;;
*./*)
echo "$line That's directory"
;;
esac
done < "$input"



# #for i in $(cat $1 | grep -Hn '.sh' $1)

# #do
# for i in $(cat $1)
# do
# case $i in
# *.sh)
# echo "$i File exsisted"
# ;;
# .jpg)
# echo "$i its text file"
# ;;
# esac
# done
