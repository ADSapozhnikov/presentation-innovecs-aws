#!/bin/bash

aws --profile demo cloudformation create-stack \
    --stack-name Demo \
    --template-body file://.//cloudformation-1.yaml \
    --parameters ParameterKey=KeyName,ParameterValue=aws-personal-demo-us-east-1
