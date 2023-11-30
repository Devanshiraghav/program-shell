#!/usr/bin/bash
read -p "Enter a number for sum :" num
count=0
sum=0
while [ $num != 0 ] 
do
      	 b=$(( $num % 10 ))
        	num=$(( $num / 10 ))
        	sum=$(( $sum + $b))
        	((count += 1))
done
echo "Length of number = $count"
echo "Sum of digits = $sum"
