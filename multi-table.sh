#!/bin/sh
isValid () {
	if ! [ $1 -eq $1 2> /dev/null ] || ! [ $2 -eq $2 2> /dev/null ]
	then
		echo "Wrong input. Input must be form of integer"
		exit 1
	else
		if [ -z $1 ] || [ -z $2 ]
		then
			echo "Invalid input. No input value"
			exit 1
		else
			if [ $1 -le 0 ] || [ $2 -le 0 ]
			then
				echo "Wrong input. Input must be greater than 0"
				exit 1
			else
				return
			fi
		fi
	fi	       
}
mul=0
isValid $1 $2
for i in $(seq 1 $1)
do
	for j in $(seq 1 $2)
	do
		mul=$(expr $i \* $j)
		printf "%d*%d=%d\t" $i $j $mul
	done
echo ""
done
exit 0
