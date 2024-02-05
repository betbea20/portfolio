#! /bin/bash
#
#Author: Bette
#
#Script Purpose: Generate integers and perform operations. 
#
#Usage: ./Activity8.sh 
#
#
counter=1
numarray=()
while [[ $counter -lt 11 ]];
do
	input=blank
	if [[ $counter -gt 5 ]]; then
		echo Type quit to end early
		read input < /dev/tty
		if [[ "$input" == "quit" ]]; then
			break
		fi
		numarray+=($input)
		let "counter++"
	else
		read input < /dev/tty
		numarray+=($input)
		let "counter++"
	fi
done

echo You entered numbers: 
echo ${numarray[*]}

# calculate the product
product=1
for i in ${numarray[@]}
do product=$(( product*i ))
done
echo Product of numbers is: $product

# calculate the sum
sum=0
for i in ${numarray[@]}
do sum=$(( sum+i )) 
done
echo Sum of numbers is: $sum

# calculate the average
avg=$(bc <<< "scale=2;$sum/$counter")
echo Average of numbers is: $avg

# get min max
list=$(for i in ${numarray[@]} ;do echo -e "$i" ; done | sort -n)
echo min number
echo $list | awk '{print $1}'
echo max numer
echo $list | awk '{print $NF}'

