#!/bin/bash

aws --profile demo cloudformation update-stack \
    --stack-name Demo \
    --template-body file://.//cloudformation-template.yaml \
    --parameters ParameterKey=KeyName,ParameterValue=aws-personal-demo-us-east-1 \
    --capabilities CAPABILITY_IAM


