#!/bin/sh

if [ $# -ne 2 ] ; then
	echo "Invalid input"
	exit 1
fi

if [ $1 -lt 1 ] || [ $2 -lt 1 ] ; then
	echo "Input must be greater than 0"
	exit 1
fi

n=$1
m=$2
for i in $(seq 1 $n)
do
	for j in $(seq 1 $m)
	do
		result=$(($i * $j))
		printf "%d*%d=%d\t" $i $j $result
	done
	printf "\n"
done

exit 0
