#! /bin/bash 
#
#Author: Bette
#
#usage: ./script.sh
#
#

DATE=$(date +'%Y%m%d')
ls fil* | while read line
do
if [ $line== 'script.sh' ]
then 
	echo "nothing to do"
else 
	mv $line $line.$DATE
fi 
done
