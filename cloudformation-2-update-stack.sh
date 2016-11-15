#!/bin/bash

aws --profile demo cloudformation update-stack \
    --stack-name Demo \
    --template-body file://.//cloudformation-2.yaml \
    --parameters ParameterKey=KeyName,ParameterValue=aws-personal-demo-us-east-1
