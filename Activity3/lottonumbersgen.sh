#!/bin/bash
#
#Author: Bette
#
#Script Purpose: Generating Lottery Numbers and Bonus Number
#
#Usage: ./lottonumbersgen.sh
#
#
(shuf -i 1-50 -n 5; shuf -i 1-10 -n 1) > "./lottonumbers-$(date +"%d-%m-%Y").txt"
