#!/bin/bash -x
echo " flip coin simulator"

HEAD=0

flipCoin=$((RANDOM%2))
if [ $flipCoin == $HEAD ]
then
	echo "Head"
else
	echo "Tail"
fi
