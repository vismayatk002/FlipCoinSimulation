#!/bin/sh
head=1
tail=0
headCount=0
tailCount=0
while [[ $headCount -lt 22 && $tailCount -lt 22 ]]
do
	randomnumber=$((RANDOM%2))
	if [ $randomnumber -eq $head ]
	then
		((headCount++))
	else
		((tailCount++))
	fi
done
if [ $headCount -gt $tailCount ]
then
	echo "Head Wins"
	point=$(($headCount - $tailCount))
	echo "Head Won by " $point
elif [ $headCount -lt $tailCount ]
then
	echo "Tail Wins"
	point=$(($tailCount - $headCount))
	echo "Tail Won by :" $point
else
	echo "Head and Tail are in Tie"
	diffHeadTail=$(($headCount - $tailCount))
	diffTailHead=$(($tailCount - $headCount))
	while [[ $diffHeadTail -lt 2 && $diffTailHead -lt 2 ]]
	do
		randomnumber=$((RANDOM%2))
		if [ $randomnumber -eq $head ]
		then
			((headCount++))
		else
			((tailCount++))
		fi
		diffHeadTail=$(($headCount - $tailCount))
		diffTailHead=$(($tailCount - $headCount))
	done
	echo "Head Count :" $headCount
	echo "Tail Count :" $tailCount
	if [ $headCount -gt $tailCount ] 
	then
		echo "Head Wins"
	else
		echo "Tail Wins"
	fi
fi

