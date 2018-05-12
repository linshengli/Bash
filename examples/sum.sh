#!/bin/bash
echo "This program will sum from begin to end,included ([begin,end])."
read -p "Please input begin: " begin
read -p "Please input end: " end
sum=0
i=$begin
if [ $end -lt $begin ]
then
    echo "end number is small than begin"
    exit
fi
while [ $i -le $end ]
do
    let sum+=$i
    let i+=1
done
echo "The Sum is ${sum}."