#!/bin/bash
name="Tbxsx"
num="8"
echo $name $num

contentFolder=`pwd`
echo $contentFolder
contentFolder=$(ls)
echo $contentFolder

skill="music"
echo $skill
echo "${skill}er"
echo $skiller #空行

variable="variable"
echo $variable
variable="new variable"
echo $variable
unset variable
echo $variable #空行


variable="variable"
readonly variable
echo $variable
variable="something new" #
echo $variable