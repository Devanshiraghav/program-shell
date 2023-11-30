echo " enter the number of terms"
read n
x=0
y=1
i=2
echo "fibconacci series upto $n terms"
echo "$x"
echo "$y"

while [$i -lt $n]
do
i='expr $i ++1'
z='expr $x+ $y'
echo "$z"
x=$y
y=$z
done

