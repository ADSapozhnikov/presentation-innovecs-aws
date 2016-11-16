#!/bin/bash

aws --profile demo cloudformation update-stack \
    --stack-name Demo \
    --template-body file://.//$1 \
    --parameters ParameterKey=KeyName,ParameterValue=aws-personal-demo-us-east-1 \
    --capabilities CAPABILITY_IAM


