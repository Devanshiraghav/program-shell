 #!usr/bash/bin

read -p "Enter a number to check whether it is pallindrome or not : " num
temp=$num
sum=0
while [ $temp != 0 ]
do
        b=$(( $temp % 10 ))
        sum=$(( $sum * 10 + $b ))
        temp=$(( $temp / 10 ))
done
if [ $sum == $num ]
then
        echo "Number is Pallindrome"
else
        echo "Number is not a Pallindrome"

