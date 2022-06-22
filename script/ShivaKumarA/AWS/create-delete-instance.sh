#!/bin/bash

echo "Work in Progress"

echo "Creating an Instance on AWS via the AWS CLI"
aws ec2 run-instances --image-id ami-0cff7528ff583bf9a --count 1 --instance-type t2.micro --key-name jcrsk --security-group-ids sshsg

echo "Lets Sleep for 20 seconds, coz even aws needs time to spin up the instance..."
sleep 20

echo "Checking if our instance with Image ID ami-0cff7528ff583bf9a is seen on the list of Instances"
aws ec2 describe-instances --filters "Name=image-id,Values=ami-0cff7528ff583bf9a"

echo "Trying to get all the Instance ID's"
aws ec2 describe-instances --filters "Name=instance-type,Values=t2.micro" --query "Reservations[].Instances[].InstanceId"

echo "Trying to get the Running Instance ID's as a Text, which later I will assign to a Variable"
aws ec2 describe-instances --filters "Name=instance-type,Values=t2.micro" "Name=instance-state-name,Values=running" --query "Reservations[].Instances[].InstanceId" --output text

echo "I am still learning the Linux bit so unable to pipe the output of the script command to a variable"
echo "for now copy and paste the instance id to terminate it.."

read -p "Copy and paste the Instance ID: " instance
aws ec2 terminate-instances --instance-ids $instance

echo "Lets Sleep for 20 seconds, coz even aws needs time to do its work"
sleep 20

echo "Lets check if the instance was terminated"
aws ec2 describe-instances --filters "Name=instance-type,Values=t2.micro" "Name=instance-state-name,Values=terminated" --query "Reservations[].Instances[].InstanceId"
