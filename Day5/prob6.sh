#6. Write a program that reads 5 Random 3 Digit values and then outputs the minimum and the maximum value

n=5
i=0
while [ $i -lt $n ]
do
	a[$i]=$((RANDOM%1000))
	i=`expr $i + 1`
done
echo "output "
for i in "${a[@]}"
do
	echo $i
done
max=0
min=10000
for i in "${a[@]}"
do
	if [ $i -gt $max ]
	then
		max=$i
	fi
	if [ $i -lt $min ]
	then
		min=$i
	fi
done
echo "Maximum No: "$max
echo "Minimum No: "$min
