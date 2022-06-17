#!/bin/bash
echo "airthmatic operations using different methods:"
a=11
b=5

#USING expr COMMAND
#works as string and prints as it is in the coats-->$a + $b 
expr '$a + $b'

#works as string and prints the content of variable-->11+5
expr $a+$b


#performs addition and displays the output on the terminal-->16 
expr $a + $b

# using back tick and storing the value to variable
sum1=`expr $a / $b`
echo "sum=$sum1"

# using command substitue and storing the value to variable
sum2=$(expr $a / $b)
echo "sum=$sum2"


#USING let COMMAND and got output correctly and cannot print output to terminal without storing
#like below
#echo `let p4=$a*$b`
#echo "product4=`let p5=$a*$b`"



let p1=$a*$b
echo "product1=$p1"

let "p2=$a*$b"
echo "product2=$p2"

let "p3=$a * $b"
echo "product3=$p3"

#using double brackets
value1=$(($a+$b))
echo $value1

read -p "enter the value:" n1
echo "u enterd $n1"



