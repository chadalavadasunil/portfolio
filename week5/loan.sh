#!/bin/bash

awk 'BEGIN{print "GOOD MORNING"
  FS=","
  RS="\n"
  # RS=""

  }
  {
    print "CUSTOMER " $1 " BOUGHT $:" $2 " WORTH OF GOODS "
  }
  END{print "BYE"}' record.csv