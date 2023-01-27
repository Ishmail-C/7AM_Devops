#!/bin/bash

# Prompt user for range
echo "Enter the range (e.g. 100 200):"
read start end

# Loop through the range
for ((i=$start; i<=$end; i++))
do
  # Convert number to string
  num=$i
  rev=""
  while [ $num -gt 0 ]
  do
    # Get last digit of number
    digit=$((num % 10))
    # Add digit to rev string
    rev=$(echo ${rev}${digit})
    # Remove last digit from number
    num=$((num / 10))
  done

  # Check if number is palindrome
  if [ $i -eq $rev ]; then
    echo $i is a palindrome
  fi
done

