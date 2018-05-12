## 定义变量
`shell`中变量不需要声明，直接使用`=`赋值即可，注意`=`两侧不能有空格。
```
varable="variable"
```
使用系统命令赋值：
- 使用反引号 \`\` 将系统命令的输出结果赋值给变量
- 使用 `$( command )` 将系统命令的输出结果赋值给变量
```
contentFolder=`pwd`
echo $contentFolder
contentFolder=$(ls)
echo $contentFolder

```
## 使用变量
在变量前加上`$`符，也可以使用`{}`指明变量的名称。
```
variable="Tbxsx"
$variable
${variable}
```
使用`$`符指定变量名称:
```
skill="music"
echo $skill
echo "${skill}er" #输出musicer,如果不适用{}，将会出现skiller变量未定义，输出空行

```
## 删除变量,修改变量和只读变量
- 删除变量使用`unset`命令
- 修改变量可以通过重新赋值
- 只读变量使用`readonly`声明,在声明为只读变量后无法修改和删除
```
variable="variable"
echo $variable
variable="new variable"
echo $variable
unset variable
echo $variable
```

```
variable="variable"
readonly variable
echo $variable
variable="something new"
echo $variable

```
输出:
```
variable
./variable.sh: 行 27: variable: 只读变量
variable
```