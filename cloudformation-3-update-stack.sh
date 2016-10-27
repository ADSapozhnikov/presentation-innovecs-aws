#!/bin/bash

aws --profile $1 cloudformation update-stack \
    --stack-name test1 \
    --template-body file://.//cloudformation2.yaml \
    --parameters ParameterKey=KeyName,ParameterValue=aws-alex-test \
    --capabilities CAPABILITY_IAM
