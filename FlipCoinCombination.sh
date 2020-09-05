#!/bin/bash -x
echo " flip coin simulator"

HEAD=0

headCount=0
tailCount=0

declare -A singletFlip

read -p "Enter the Number of Coin Flip : " numberOfCoinFlip

for(( count=0; count<$numberOfCoinFlip; count++ ))
do
   FlipCoin=$(( RANDOM % 2 ))

   if [ $FlipCoin -eq $HEAD ]
   then
      singletFlip[HEAD]=$((++headCount))
   else
      singletFlip[TAIL]=$((++tailCount))
   fi
done

singletHeadPercentage=$(($headCount * 100 / $numberOfCoinFlip))
singletTailPercentage=$(($tailCount *100 / $numberOfCoinFlip))

echo "To single head percentage and head count:$headCount : " $singletHeadPercentage
echo "To single tail percentage and tail count:$tailCount : " $singletTailPercentage
