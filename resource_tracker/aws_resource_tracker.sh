#!/bin/bash

####################################
# Author - Priyanshu
# Date - 01/04/2026
#
# Version - v1
#
# This script will report aws resource usage
####################################

# AWS S3
# AWS EC2
# AWS lambda
# AWS IAM users

# List S3 buckets
echo "List of aws s3 buckets"
aws s3 ls 
echo "End of list for S3 buckets"
echo "----------------"

# List ec2 instance ids
echo "List of aws ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'
echo "End of list for ec2"
echo "----------------"

# List lambda
echo "List of lambda functions"
aws lambda list-functions
echo "End of list for lambda functions"
echo "----------------"

# List IAM 
echo "List of IAM users"
aws iam list-users
echo "End of List for iam users"
echo "----------------"



