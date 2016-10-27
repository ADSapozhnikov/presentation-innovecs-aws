#!/bin/bash

aws --profile $1 cloudformation create-stack \
    --stack-name test1 \
    --template-body file://.//cloudformation1.yaml \
    --parameters ParameterKey=KeyName,ParameterValue=aws-alex-test
