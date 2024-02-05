#! /bin/bash
#
#Author: Bette
#
#Script Purpose: Validate security of user's password 
#
#Usage: ./password_script.sh 
#
#
echo "password"
read -r  password 
if [ ${#password} -ge 8 ]
then 
	echo "Password length is sufficient."
else 
	echo "Password length should be 8 or more characters."
exit 1       
fi 

if
echo "$password" | grep "[0-9]" 
then
	echo "Password is contains at least 1 number."
else 
	echo "Password must contain at least 1 number."
exit 2
fi 

if
echo "$password" | grep "[A-Z}"
then
	echo "Password contains at least 1 uppercase character." 
else 
	echo "Password must contain at least 1 uppercase character."
	exit 3 
fi 
echo "Password meets all criteria." 

