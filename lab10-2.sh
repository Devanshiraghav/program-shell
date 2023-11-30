echo -e "enter the string:\c"
read str
len='expr length "$str"'
rev=""
for (( i=len-1; i>=0; i--))
do
rev="${rev}${str:$i:1}"
done
echo "the reverse of the string  "$str" is "$rev""

