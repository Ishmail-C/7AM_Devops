#!/bin/bash
echo "performing an airthmatic operations"

echo "Enter the value of a:"
read a
echo "Enter the value of b:"
read b

c=$(($a+$b))
d=$(($a-$b))
e=$(($a*$b))
f=$(($a/$b))
g=$(($a%$b))
echo "sum=$c"
echo "difference=$d"

echo "product=$e"
echo "quotient=$f"
echo " remainder=$g"
