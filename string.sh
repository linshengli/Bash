#!/bin/bash

str="This is the test string."
echo ${#str}
expr length "$str" #`$str`必须加上双引号
expr "$str" : ".*" #注意`:`两边需要空开

str="This is the test string."
expr index "$str" "i" #3
expr index "$str" "t" #9

expr match "$str" This #4

# ${str:start:end}
# ${str:pos} pos>0
# ${str: -pos} pos>0
echo ${str:2:7} # is is t
echo ${str:8}
echo ${str: -4} #截取后4位，注意 -4前有空格
expr substr "$str" 2 7 # his is 

str="apple, tree, apple tree apple"
echo ${str/apple/APPLE}   # 替换第一次出现的apple
echo ${str//apple/APPLE}  # 替换所有apple

echo ${str/#apple/APPLE}  # 如果字符串str以apple开头，则用APPLE替换它
echo ${str/%apple/APPLE}  # 如果字符串str以apple结尾，则用APPLE替换它

if [[ "a.txt" == a* ]]        # 逻辑真 (pattern matching)
then 
    echo "True"
fi
if [[ "a.txt" =~ .*\.txt ]]   # 逻辑真 (regex matching)
then 
    echo "True"
fi

if [[ "abc" == "abc" ]]       # 逻辑真 (string comparision) 
then 
    echo "True"
fi

if [[ "11" < "2" ]]           # 逻辑真 (string comparision), 按ascii值比较
then 
    echo "True"
fi