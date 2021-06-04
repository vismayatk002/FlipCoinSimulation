#!/bin/sh
head=1
tail=0
headCount=0
tailCount=0
for ((i=0; i<10; i++))
do
	randomnumber=$((RANDOM%3))
	if [ $randomnumber -eq $head ]
	then
		((headCount++))
	else
		((tailCount++))
	fi
done
echo "Number of times Head Won :" $headCount
echo "Number of times Tail Won :" $tailCount