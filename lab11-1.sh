echo "enter a sentence:"
read sen
ws=($sen)
echo "words are:"
for word in "${ws[@]}":
do
echo "$word"
done 

