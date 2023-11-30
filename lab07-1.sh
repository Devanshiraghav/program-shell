echo -n "enter a file name"
read a
if [ -e $a ]
then
echo "$a exists"
else
echo " $a does not  exists"
fi

