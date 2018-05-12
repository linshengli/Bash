## shell 中的 read,echo,printf

### `read`：表示从标准输入中读取单行输入

```
read name
echo $name
```

常用的参数：

* `-p` 后面输入提示信息，例如：`read -p "Please Input Your name:" name`
* `-s` 输入时在`shell`上不显示，常用语输入密码（事实上只是将输入的文本颜色设置为背景颜色）
* `-t` 设定时间
* `-n` 设定可以输入的字符数量

```
read -p "You password:" -n6 -t5 -s password
echo "\nYour password is $password"
```
当输入变量多于定义的变量时，多输入的变量会作为一个字符串输入最后一个变量中。
```
read -p "Two Variables:" var1 var2
echo $var1
echo $var2

```
执行结果
```
Two Variables:var1 var2 var3
var1
var2 var3
```

### `echo`

`echo`输出根据输出字符是否使用引号和引号的类型分为四种情况

|  类型  | 能否引用变量 | 能否引用转义符 | 能否引用文本格式符(如：换行符、制表符) |
| :----: | :----------: | :------------: | :------------------------------------: |
| 单引号 |      否      |       否       |                   否                   |
| 双引号 |      能      |       能       |                   能                   |
| 无引号 |      能      |       能       |                   否                   |
|   反引号     |         否     |    否            | 否|


**反引号表示引号内的是需要执行的系统命令**

```
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
```

### `printf`: 常用于格式化输出
- 使用`%`表示需要格式化的字符串
- %s,%c,%f,%d 分别表示格式化字符串，单个字符，数字类型和十进制数

```
printf "%-12s %-10s %-10s\n" Name  Sex Weight
printf "%-12s %-10c %-4.2f\n" Leo  M   55.6655
printf "%-12s %-10c %-4.2f\n" Jack F   65.6655
printf "%-12s %-10c %-4.2f\n" Mack F   85.6655

```

## 输入输出重定向
