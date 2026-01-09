#!/bin/bash

###########################################
# Author : Pavan
# Date : 09-01-2026
#
#
# Version : v1
#
#
# This script will report AWS resource usage
############################################


# AWS S3 
# AWS EC2
# AWS lambda
#AWS IAM Users


set -x


# list s3 buckets 
echo "Print list of s3 buckets"
aws s3 ls > resource_tracker


# list EC2 buckets
echo "Print list of EC2 instance"

aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resource_tracker



# list aws  lambda
echo "Print list of lambda functions"

aws lambda list-functions >> resource_tracker
 
 
#AWS IAM Users
echo "Print list of IAM Users"

aws iam list-users >> resource_tracker


