#!/bin/bash

aws --profile demo ec2 run-instances \
    --image-id 'ami-29f96d3e' \
    --key-name 'aws-personal-demo-us-east-1' \
    --security-groups 'allow-all-traffic' \
    --instance-type 't2.nano' \
    --placement '{"AvailabilityZone":"us-east-1a"}' \
    --block-device-mappings '[{"DeviceName":"/dev/sda1","Ebs":{"VolumeSize":10,"DeleteOnTermination":true,"VolumeType":"gp2"}}]' 
