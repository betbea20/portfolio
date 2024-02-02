#! /bin/bash
#
#Author: Bette
#
#Script Purpose: Validate security of user's password 
#
#Usage: ./script.sh 
#
#
echo "password"
read password 
if [ $(password) > 7 ] 
then 
	echo true
else 
	echo "Password length should be 8 or more characters"
exit 1       
fi 

echo "password" | grep "[0-9]"
if [ -z "$password" ] 
then
	echo "Password must contain at least 1 number"
exit 2
else 
	echo true
fi 

echo "password" | grep "[A-Z}"
if [ -z "$password" ] 
then
	echo "Password must contain at least 1 uppercase character" 
exit 3 
else 
	echo true 
fi 
echo "PASS"

