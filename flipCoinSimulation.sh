#!/bin/sh
head=1
tail=0
randomnumber=$((RANDOM%3))
if [ $randomnumber -eq $head ]
then
	echo "Head as Winner"
else
	echo "Tail as Winner"
fi