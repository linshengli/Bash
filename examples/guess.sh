#!/bin/bash
# $RANDOM 系统随机变量 会产生0-32767之间的随机数
# 我们需要一个0-100之间的随机数
rand=$(($RANDOM%101))
echo $rand
time=0
allow=10
echo "We have a secret number in range [0-100],can you guess it in $allow times?"
while [ $time -lt $allow ]
do 
    read -p "Your guess: " guess
    if [ $rand -lt $guess ]
    then
        echo "your guess number is too big"
    elif [ $rand -eq $guess ]
    then
        echo "Congradulation! You got it."
        break;
    else
        echo "you guess number is too small"
    fi
    let time+=1
done
if [ $time -ge $allow ]
then
    echo "Sorry,${allow} are used up, guess it next time!"
fi
echo "Our secrute number is $rand ."

