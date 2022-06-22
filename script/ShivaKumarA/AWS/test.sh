#!/bin/bash

echo " My test pad of Script file where I run individual commands.. "

echo "Trying to get the Running Instance ID's as a Text, this allows me to assign it to a variable"

aws ec2 describe-instances --filters "Name=instance-type,Values=t2.micro" "Name=instance-state-name,Values=running" --query "Reservations[].Instances[].InstanceId" --output text


#######################################################
# Logic says this should work but it doesnt.. maybe i am doing it wrong.. 
# instance = $(aws ec2 describe-instances --filters "Name=instance-type,Values=t2.micro" "Name=instance-state-name,Values=running" --query "Reservations[].Instances[].InstanceId" --output text)
# echo "Will initiate deletion of Instance: $instance"
#######################################################

read -p "Copy and paste the Instance ID: " instance
aws ec2 terminate-instances --instance-ids $instance
sleep 20
echo "lets check if the instance was terminated"
aws ec2 describe-instances --filters "Name=instance-type,Values=t2.micro" "Name=instance-state-name,Values=terminated" --query "Reservations[].Instances[].InstanceId"
