#!/bin/bash

aws --profile $1 ec2 run-instances \
    --image-id 'ami-29f96d3e' \
    --key-name 'aws-alex-test' \
    --security-groups 'allow-all-traffic' \
    --instance-type 't2.micro' \
    --placement '{"AvailabilityZone":"us-east-1a"}' \
    --block-device-mappings '[{"DeviceName":"/dev/sda1","Ebs":{"VolumeSize":10,"DeleteOnTermination":true,"VolumeType":"gp2"}}]' 
