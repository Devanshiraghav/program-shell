echo "enter a sentence:"
read str
len='expr length "$str"'
rev=""
for (( i=len-1; i>=0 ; i--))
do
rev="${rev}${str:$i:1}"
done
if [ $str == $rev]
then
echo "palindrom"
else
echo "not paindrome"
fi

