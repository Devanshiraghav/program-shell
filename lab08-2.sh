echo "enter a string"
read a
word=$(echo -n "$a" | wc -c)
echo "number of characters are $word"
b= "did you write?"
ns=${b}${a}
echo "concatenated string is $ns"
if [ "$a" = "HELLO" ]
then
echo "string matched"
else
echo "string not matched"
fi


