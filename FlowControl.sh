#!/bin/bash

a=10
b=20
if [ $a -lt $b ]; then
echo "a is less then b"
fi

for loop in 1 2 3 4 5
do
    echo "The value is: $loop"
done

for str in 'This is a string'
do
    echo $str
done

for((i=1;i<=5;i++));do
    echo "这是第 $i 次调用";
done;

sum=0
i=1
while [ $i -le 100 ]
do
    let sum+=$i
    let i++
done
echo "Sum from 1 to 100 : $sum"