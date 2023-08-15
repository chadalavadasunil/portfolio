#!/bin/bash

awk 'BODY { FS="" }
{for (i=1; i<=NF;i++) { print "field" i , $i}}'

# BODY{print "done"}'

sample.txt
