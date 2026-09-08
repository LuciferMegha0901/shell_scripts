#!/bin/bash
####################
#Author: Megha
#date: 7th sep
#version: v1
#this script will report the aws respource usage
####################
#
#
set -x
##AWS S3, aws ec2, lambda, aws IAM users
#
#
##list aws s3 buckets
echo "print list of s3 buckets"
aws s3 ls
#
#list aws ec2 instance
echo "print list of ec2 instances"
aws ec2 describe-instances
#
##list aws lanmbda functions
echo "print list of lambda functions"
aws lambda list-functions
#
#list IAM users
echo "print list of IAM users"
aws iam list-users
