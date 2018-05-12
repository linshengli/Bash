##流程控制

### `IF` 分支

`if-then` 语法格式：

```
if condition
then
    command1
    ...
    commandN
fi
```

```
a=10
b=20
if [ $a -lt $b ]; then
echo "a is less then b"
fi
```

`if-then-else` 语法格式:

```
if condition
then
    command1
    ...
    commandN
else
    command
fi
```

`if-then-elif-else` 语法格式：

```
if condition
then
    command1
    ...
    commandN
elif
then
    command1
    ...
    commandN
else
    command
fi
```
**注意，then,else,elif,fi等若不换行，需要使用`;`分开**

## 循环
`for-in`循环语法:

```
for var in item1 item2 ... itemN
do
    command1
    command2
    ...
    commandN
done
```

比如:

```
for loop in 1 2 3 4 5
do
    echo "The value is: $loop"
done
```
OutPut:
```
The value is: 1
The value is: 2
The value is: 3
The value is: 4
The value is: 5
```

`for`语法二：
```
for((i=1;i<=5;i++));do
    echo "这是第 $i 次调用";
done;
```

在这里，需要注意，在`for`内部使用i并没有使用`$`。

`whlile`循环
语法:
```
while condition
do
    command
done
```
示例
```
sum=0
i=1
while [ $i -le 100 ]
do
    let sum+=$i
    let i++
done
echo "Sum from 1 to 100 : $sum"
```

