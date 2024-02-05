#!/bin/bash
#
#Author:Bette 
#
#Script purpose: True or false quiz game
#
#Usage: ./quiz_script.sh
#
cat questions | while read line;
do
	QUESTION=`echo $line | awk -F ',' '{print$1}'`
	ANSWER=`echo $line | awk -F ',' '{print$2}'`
	USERANSWER=blank
	echo $QUESTION
	read USERANSWER < /dev/tty
	if [[ "$USERANSWER" == "$ANSWER" ]]; then
		echo Correct!
	else
		echo Wrong! Answer is $ANSWER
	fi

done
