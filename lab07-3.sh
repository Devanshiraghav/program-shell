echo "enter the file name "
read a
line=$((wc -l< $a ))
echo " number of line :$line"
word=$((wc -w <$a))
echo "number of words $word"
char=$((wc -c < $a))
echo "number ofcharacters $char"

