#!/bin/bash
which $1
if [ $? -eq 0 ]
then
echo "this package is existing in your bin"
else
sudo yum install $1
echo "desired package is installed"
fi
