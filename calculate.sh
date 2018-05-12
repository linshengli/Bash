#!/bin/bash
a=24
b=9
echo $[$a+$b] #加
echo $[$a/$b] #除
echo $[$a*$b] #乘
echo $[$a-$b] #减
echo $[$a**$b] #乘方
echo $[$a%$b] #取余
echo $[$a>$b] #判断大小 返回 1
echo $[$a<$b] #返回0
echo $[$a>=$b] #返回1

echo `expr $a + $b`
echo `expr $a - $b`
echo `expr $a \* $b`
echo `expr $a / $b`
echo `expr $a % $b`

echo $(($a+$b))
echo $(($a-$b))
echo $(($a*$b))
echo $(($a/$b))
echo $(($a**$b))
echo $(($a%$b))
echo $(($a>$b))
echo $(($a>=$b))
echo $(($a<$b))