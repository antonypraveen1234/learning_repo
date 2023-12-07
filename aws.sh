#! /bin/bash
 
AWS_REGION="ap-south-1"
read -p "Enter Instance ID:- " INSTANCE_ID
 
aws ec2 terminate-instances --region $AWS_REGION --instance-ids $INSTANCE_ID
 
aws ec2 wait instance-terminated --instance-ids $INSTANCE_ID
 
echo "Instance $INSTANCE_ID has been terminated."