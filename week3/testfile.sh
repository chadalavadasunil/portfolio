#!/bin/bash




# for i
# do
#  echo $i
# done


#for (( i=10;i>=3;i-- ))

#do
#	echo "the number is $i" 

#done
# a=1
# b=$(($a+1))
# while [ $a -le 10 ]

# do 
# 	echo "$a"
# 	a=$(($a+1))
# done



# In Ubuntu's Bash shell, the case statement is a powerful construct used for conditional branching. It allows you to perform different actions based on the value of a variable or an expression. The case statement is often used as an alternative to multiple nested if statements when dealing with multiple possible conditions.

# The basic syntax of a case statement in Bash is as follows:

# bash
# Copy code
# case "$variable" in
#     pattern1)
#         # commands to be executed if $variable matches pattern1
#         ;;
#     pattern2)
#         # commands to be executed if $variable matches pattern2
#         ;;
#     pattern3)
#         # commands to be executed if $variable matches pattern3
#         ;;
#     *)
#         # default commands to be executed if none of the patterns match
#         ;;
# esac
# Here's a breakdown of each part of the case statement:

# "$variable": The variable or expression whose value you want to check.

# pattern1, pattern2, pattern3, etc.: The patterns that you want to compare the value of the variable against. Patterns can include wildcards like * or ? to match multiple values.

# ;;: The double semi-colon is used to indicate the end of each pattern block. If a pattern matches, the commands inside that block are executed, and the case statement terminates (unless ;& or ;;& is used, which continues to the next pattern).

# *): The *) is the default pattern, which is executed if none of the previous patterns match the value of the variable.

# Here's an example of a case statement that checks the value of the variable day and performs different actions based on the day of the week:

# bash
# Copy code
#!/bin/bash

# day="Tuesday"

# case "$day" in
#     Monday)
#         echo "It's Monday!"
#         ;;
#     Tuesday)
#         echo "It's Tuesday!"
#         ;;
#     Wednesday)
#         echo "It's Wednesday!"
#         ;;
#     Thursday)
#         echo "It's Thursday!"
#         ;;
#     Friday)
#         echo "It's Friday!"
#         ;;
#     *)
#         echo "It's the weekend!"
#         ;;
# esac


#sunil case script

#!/bin/bash

read -rp " please enter day ::" day

case $day in

Monday)
echo " it Monday boaring"
;;
Tuesday)
echo " it Tuesday no holiday"
;;
Wednesday)
echo " it Wednesday no holiday!!"
;;
Thursday)
echo " Its Thursday badminton day!!"
;;
Friday)
echo " it Friday no holiday"
;;
Saturday)
echo " Its friday and holiday!!"
;;
Sunday)
echo " its holiday church day"
;;
esac

