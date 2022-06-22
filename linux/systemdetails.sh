#!/bin/bash

echo -e "\n"
echo -e "SYSTEM DETAILS:"
echo -e "\n"
uname -a

echo -e "\n"
echo -e "MEMORY DETAILS:"
echo -e "\n"
free

echo -e "\n"
echo -e "CPU DETAILS:"
echo -e "\n"
lscpu

echo -e "\n"
echo -e "DISK DETAILS:"
echo -e "\n"
df -h
 
