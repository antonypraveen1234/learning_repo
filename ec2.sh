AWS_REGION="ap-south-1"
read -p "Enter Instance type:- " INSTANCE_TYPE
read -p "Enter AMI ID:- " AMI_ID
read -p "Enter Key Name:- " KEY_NAME
read -p "Security Group ID:- " SECURITY_GROUP_ID
read -p "Enter subnet ID:- " SUBNET_ID
 
instance_id=$(aws ec2 run-instances \
  --region $AWS_REGION \
    --image-id $AMI_ID \
      --instance-type $INSTANCE_TYPE \
        --key-name $KEY_NAME \
          --security-group-ids $SECURITY_GROUP_ID \
            --subnet-id $SUBNET_ID \
              --output json | jq -r '.Instances[0].InstanceId')
 
echo "Instance ID: $instance_id"
 
aws ec2 wait instance-running --instance-ids $instance_id