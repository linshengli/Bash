#！/bin/bash

echo string
echo $USER
echo User is \"$USER\"

echo "String"
echo "$USER \""
echo -e "$USER \n" #开启转义

echo '$USER' #输出 $USER 
echo '\n'


echo `date`
echo `string`

read name
echo $name
read -n5 name #设定
echo -e $name

read -p "Two Variables:" var1 var2
echo $var1
echo $var2


read -p "You password:" -n6 -t5 -s password #设定5秒的时间，输入字符转数目为6个
echo "\nYour password is $password"

echo "HH \n" # 输出 HH \n,\n不转义
echo -e "HH \n" #输出 HH，\n转义
echo hehe #输出 hehe 等同于 echo "hehe"
echo hehe\n #输出 hehen