#! /bin/bash
#
#Author: Bette
#
#Script Purpose: Check Lottery and Bonus Numbers  
#
#Usage: ./lottonumberscheck.sh 
#
#
comm -12 <(cat $1 | sort -n)  <(cat $2 | sort -n) | wc -l
