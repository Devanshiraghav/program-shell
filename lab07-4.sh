fact(){
if [ $1 -eq 0 ]
then
fac=1
else
fac=1
i=1
x=$(($i+1))
while [ $i -lt $x]
do
fac='expr $fac \* $i"
i=$(($i +1))
done
fi
echo "fac"
}
fact 5
fact 9
fact 15


