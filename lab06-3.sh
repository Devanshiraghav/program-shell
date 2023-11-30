#!usr/bin/bash
declare -a arr
declare -a arr2
read -p "Enter the number of elements you want to enter :" n
for ((i=0;i<n;i++))
do 
 read -p "Enter element $(($i+1)) : " num
 arr[i]=$num
 arr2[i]=$num
done
for ((i=0; i<n-1; i++));
do
    for ((j=0; j<n-i-1; j++));
    do
        if [ ${arr[j]} -gt ${arr[j+1]} ];
        then
            temp=${arr[j]}
            arr[j]=${arr[j+1]}
            arr[j+1]=$temp
        fi
    done
done
echo "Ascending Order : ${arr[@]}"
for ((i=0; i<n-1; i++));
do
    for ((j=0; j<n-i-1; j++)); 
    do
        if [ ${arr2[j]} -lt ${arr2[j+1]} ]; 
 then
            temp=${arr2[j]}
            arr2[j]=${arr2[j+1]}
            arr2[j+1]=$temp
        fi
