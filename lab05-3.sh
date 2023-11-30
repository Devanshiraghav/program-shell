#!/usr/bin/bash
read -p "Enter a number :" num
temp=$num
sum=0
while [ $temp != 0  ]
do
        b=$(( $temp % 10 ))
        sum=$(($sum + $b * $b * $b))
        temp=$(( $temp / 10 ))
done
if [ $sum == $num ]
then
echo "Armstrong number"
else
echo " Not Armstrong "
fi
