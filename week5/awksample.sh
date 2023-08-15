#!/bin/bash

#cp /etc/passwd /home/student/scripts/portfolio/week5/sample2.txt
awk ' BEGIN{ print "welcom" 
 FS = ":" 
 RS = "\n" 
 }


{if ($1=="rooot") {print "the username is "  $1 "  and roles is " $7} 
else { print "no record has found"}
}

ri
END{ pnt "TOTAL RECORD ARE " NR }' sample2.txt



#awk 'BEGIN{ FS = ":" } { print "the username is   "           "" $1   "     and roles is   " $5 } END{ print "bye" }' sample2.txt
