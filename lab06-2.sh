#!usr/bin/bash
read -p "Enter the first number : " num1
read -p "Enter the second number : " num2
temp=$num1
for (( i=num2 ;i>0 ;i-- ))
do
        if [ $(( $num1 % $i)) == 0 ]&&[ $(( $num2 % $i )) == 0 ]
        then
                echo "$i is the GCD "
                break
                exit 0
        fi
done
if [ $(( $num1%$num2 )) == 0 ]
then
        echo "$num1 is the LCM"
else
        while [ $(( $temp%$num2 )) != 0 ] 
        do
                temp=$(( $temp+$num1 ))
        done
        echo "$temp is the LCM"
fi
