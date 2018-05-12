#!/bin/bash
echo "We will calculate a + b"
echo "Please input a:"
read a
echo "Please input b:"
read b
x=$(expr "$a" + "$b")
echo $a + $b = $x
