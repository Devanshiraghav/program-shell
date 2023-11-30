echo "enter a file name"
read a
if [ -r $a ]
then
echo "file is readable."
else 
echo "file is unreadable"
fi
if [ -w $a ]
then
echo "file is writable"
else
echo "file is unwritable"
fi
if [ -x $a]
then
echo "file is executable"
else 
echo "file is unexecutable"
fi

